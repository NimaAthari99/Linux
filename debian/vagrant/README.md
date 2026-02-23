# Vagrantfile
The primary function of the Vagrantfile is to describe the type of machine required for a project, and how to configure and provision these machines. Vagrantfiles are called Vagrantfiles because the actual literal filename for the file is Vagrantfile (casing does not matter unless your file system is running in a strict case sensitive mode).

Vagrant is meant to run with one Vagrantfile per project, and the Vagrantfile is supposed to be committed to version control. This allows other developers involved in the project to check out the code, run vagrant up, and be on their way. Vagrantfiles are portable across every platform Vagrant supports.

The syntax of Vagrantfiles is Ruby, but knowledge of the Ruby programming language is not necessary to make modifications to the Vagrantfile, since it is mostly simple variable assignment. In fact, Ruby is not even the most popular community Vagrant is used within, which should help show you that despite not having Ruby knowledge, people are very successful with Vagrant.

Lookup Path
When you run any vagrant command, Vagrant climbs up the directory tree looking for the first Vagrantfile it can find, starting first in the current directory. So if you run vagrant in /home/mitchellh/projects/foo, it will search the following paths in order for a Vagrantfile, until it finds one:
```bash
/home/mitchellh/projects/foo/Vagrantfile
/home/mitchellh/projects/Vagrantfile
/home/mitchellh/Vagrantfile
/home/Vagrantfile
/Vagrantfile
```
This feature lets you run vagrant from any directory in your project.

You can change the starting directory where Vagrant looks for a Vagrantfile by setting the VAGRANT_CWD environmental variable to some other path.

Load Order and Merging
An important concept to understand is how Vagrant loads Vagrantfiles. Vagrant actually loads a series of Vagrantfiles, merging the settings as it goes. This allows Vagrantfiles of varying level of specificity to override prior settings. Vagrantfiles are loaded in the order shown below. Note that if a Vagrantfile is not found at any step, Vagrant continues with the next step.

Vagrantfile packaged with the box that is to be used for a given machine.
Vagrantfile in your Vagrant home directory (defaults to ~/.vagrant.d). This lets you specify some defaults for your system user.
Vagrantfile from the project directory. This is the Vagrantfile that you will be modifying most of the time.
Multi-machine overrides if any.
Provider-specific overrides, if any.
At each level, settings set will be merged with previous values. What this exactly means depends on the setting. For most settings, this means that the newer setting overrides the older one. However, for things such as defining networks, the networks are actually appended to each other. By default, you should assume that settings will override each other. If the behavior is different, it will be noted in the relevant documentation section.

Within each Vagrantfile, you may specify multiple Vagrant.configure blocks. All configurations will be merged within a single Vagrantfile in the order they're defined.

Available Configuration Options
You can learn more about the available configuration options by clicking the relevant section in the left navigational area.



### Configuration Version
Configuration versions are the mechanism by which Vagrant 1.1+ is able to remain backwards compatible with Vagrant 1.0.x Vagrantfiles, while introducing dramatically new features and configuration options.

If you run vagrant init today, the Vagrantfile will be in roughly the following format:
```bash
Vagrant.configure("2") do |config|
  # ...
end
```
The "2" in the first line above represents the version of the configuration object config that will be used for configuration for that block (the section between the do and the end). This object can be very different from version to version.

Currently, there are only two supported versions: "1" and "2". Version 1 represents the configuration from Vagrant 1.0.x. "2" represents the configuration for 1.1+ leading up to 2.0.x.

When loading Vagrantfiles, Vagrant uses the proper configuration object for each version, and properly merges them, just like any other configuration.

The important thing to understand as a general user of Vagrant is that within a single configuration section, only a single version can be used. You cannot use the new config.vm.provider configurations in a version 1 configuration section. Likewise, config.vm.forward_port will not work in a version 2 configuration section (it was renamed).

If you want, you can mix and match multiple configuration versions in the same Vagrantfile. This is useful if you found some useful configuration snippet or something that you want to use. Example:
```bash
Vagrant.configure("1") do |config|
  # v1 configs...
end

Vagrant.configure("2") do |config|
  # v2 configs...
end
```
What is Vagrant::Config.run? You may see this in Vagrantfiles. This was actually how Vagrant 1.0.x did configuration. In Vagrant 1.1+, this is synonymous with Vagrant.configure("1").


### Loop Over VM Definitions
If you want to apply a slightly different configuration to many multi-machine machines, you can use a loop to do this. For example:
```bash
(1..3).each do |i|
  config.vm.define "node-#{i}" do |node|
    node.vm.provision "shell",
      inline: "echo hello from node #{i}"
  end
end
```

# THIS DOES NOT WORK!
```bash
for i in 1..3 do
  config.vm.define "node-#{i}" do |node|
    node.vm.provision "shell",
      inline: "echo hello from node #{i}"
  end
end
```
The for i in ... construct in Ruby actually modifies the value of i for each iteration, rather than making a copy. Therefore, when you run this, every node will actually provision with the same text.

## Overwrite host locale in SSH session
Usually, host locale environment variables are passed to guest. It may cause failures if the guest software do not support host locale. One possible solution is override locale in the Vagrantfile:
```bash
ENV["LC_ALL"] = "en_US.UTF-8"

Vagrant.configure("2") do |config|
  # ...
end
```

