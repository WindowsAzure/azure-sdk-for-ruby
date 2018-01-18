# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2015_06_15
  module Models
    #
    # Describes a virtual machine scale set OS profile.
    #
    class VirtualMachineScaleSetOSProfile

      include MsRestAzure

      # @return [String] Specifies the computer name prefix for all of the
      # virtual machines in the scale set. Computer name prefixes must be 1 to
      # 15 characters long.
      attr_accessor :computer_name_prefix

      # @return [String] Specifies the name of the administrator account.
      # <br><br> **Windows-only restriction:** Cannot end in "." <br><br>
      # **Disallowed values:** "administrator", "admin", "user", "user1",
      # "test", "user2", "test1", "user3", "admin1", "1", "123", "a",
      # "actuser", "adm", "admin2", "aspnet", "backup", "console", "david",
      # "guest", "john", "owner", "root", "server", "sql", "support",
      # "support_388945a0", "sys", "test2", "test3", "user4", "user5". <br><br>
      # **Minimum-length (Linux):** 1  character <br><br> **Max-length
      # (Linux):** 64 characters <br><br> **Max-length (Windows):** 20
      # characters  <br><br><li> For root access to the Linux VM, see [Using
      # root privileges on Linux virtual machines in
      # Azure](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-use-root-privileges?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json)<br><li>
      # For a list of built-in system users on Linux that should not be used in
      # this field, see [Selecting User Names for Linux on
      # Azure](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-usernames?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json)
      attr_accessor :admin_username

      # @return [String] Specifies the password of the administrator account.
      # <br><br> **Minimum-length (Windows):** 8 characters <br><br>
      # **Minimum-length (Linux):** 6 characters <br><br> **Max-length
      # (Windows):** 123 characters <br><br> **Max-length (Linux):** 72
      # characters <br><br> **Complexity requirements:** 3 out of 4 conditions
      # below need to be fulfilled <br> Has lower characters <br>Has upper
      # characters <br> Has a digit <br> Has a special character (Regex match
      # [\W_]) <br><br> **Disallowed values:** "abc@123", "P@$$w0rd",
      # "P@ssw0rd", "P@ssword123", "Pa$$word", "pass@word1", "Password!",
      # "Password1", "Password22", "iloveyou!" <br><br> For resetting the
      # password, see [How to reset the Remote Desktop service or its login
      # password in a Windows
      # VM](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-reset-rdp?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json)
      # <br><br> For resetting root password, see [Manage users, SSH, and check
      # or repair disks on Azure Linux VMs using the VMAccess
      # Extension](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-using-vmaccess-extension?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json#reset-root-password)
      attr_accessor :admin_password

      # @return [String] A base-64 encoded string of custom data.
      attr_accessor :custom_data

      # @return [WindowsConfiguration] The Windows Configuration of the OS
      # profile.
      attr_accessor :windows_configuration

      # @return [LinuxConfiguration] The Linux Configuration of the OS profile.
      attr_accessor :linux_configuration

      # @return [Array<VaultSecretGroup>] The List of certificates for addition
      # to the VM.
      attr_accessor :secrets


      #
      # Mapper for VirtualMachineScaleSetOSProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetOSProfile',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetOSProfile',
            model_properties: {
              computer_name_prefix: {
                required: false,
                serialized_name: 'computerNamePrefix',
                type: {
                  name: 'String'
                }
              },
              admin_username: {
                required: false,
                serialized_name: 'adminUsername',
                type: {
                  name: 'String'
                }
              },
              admin_password: {
                required: false,
                serialized_name: 'adminPassword',
                type: {
                  name: 'String'
                }
              },
              custom_data: {
                required: false,
                serialized_name: 'customData',
                type: {
                  name: 'String'
                }
              },
              windows_configuration: {
                required: false,
                serialized_name: 'windowsConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'WindowsConfiguration'
                }
              },
              linux_configuration: {
                required: false,
                serialized_name: 'linuxConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'LinuxConfiguration'
                }
              },
              secrets: {
                required: false,
                serialized_name: 'secrets',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VaultSecretGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VaultSecretGroup'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
