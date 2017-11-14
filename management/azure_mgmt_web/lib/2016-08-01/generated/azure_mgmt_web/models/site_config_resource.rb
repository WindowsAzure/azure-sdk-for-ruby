# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # Web app configuration ARM resource.
    #
    class SiteConfigResource < ProxyOnlyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] Number of workers.
      attr_accessor :number_of_workers

      # @return [Array<String>] Default documents.
      attr_accessor :default_documents

      # @return [String] .NET Framework version. Default value: 'v4.6' .
      attr_accessor :net_framework_version

      # @return [String] Version of PHP.
      attr_accessor :php_version

      # @return [String] Version of Python.
      attr_accessor :python_version

      # @return [String] Version of Node.js.
      attr_accessor :node_version

      # @return [String] Linux App Framework and version
      attr_accessor :linux_fx_version

      # @return [Boolean] <code>true</code> if request tracing is enabled;
      # otherwise, <code>false</code>.
      attr_accessor :request_tracing_enabled

      # @return [DateTime] Request tracing expiration time.
      attr_accessor :request_tracing_expiration_time

      # @return [Boolean] <code>true</code> if remote debugging is enabled;
      # otherwise, <code>false</code>.
      attr_accessor :remote_debugging_enabled

      # @return [String] Remote debugging version.
      attr_accessor :remote_debugging_version

      # @return [Boolean] <code>true</code> if HTTP logging is enabled;
      # otherwise, <code>false</code>.
      attr_accessor :http_logging_enabled

      # @return [Integer] HTTP logs directory size limit.
      attr_accessor :logs_directory_size_limit

      # @return [Boolean] <code>true</code> if detailed error logging is
      # enabled; otherwise, <code>false</code>.
      attr_accessor :detailed_error_logging_enabled

      # @return [String] Publishing user name.
      attr_accessor :publishing_username

      # @return [Array<NameValuePair>] Application settings.
      attr_accessor :app_settings

      # @return [Array<ConnStringInfo>] Connection strings.
      attr_accessor :connection_strings

      # @return [SiteMachineKey] Site MachineKey.
      attr_accessor :machine_key

      # @return [Array<HandlerMapping>] Handler mappings.
      attr_accessor :handler_mappings

      # @return [String] Document root.
      attr_accessor :document_root

      # @return [ScmType] SCM type. Possible values include: 'None', 'Dropbox',
      # 'Tfs', 'LocalGit', 'GitHub', 'CodePlexGit', 'CodePlexHg',
      # 'BitbucketGit', 'BitbucketHg', 'ExternalGit', 'ExternalHg', 'OneDrive',
      # 'VSO'
      attr_accessor :scm_type

      # @return [Boolean] <code>true</code> to use 32-bit worker process;
      # otherwise, <code>false</code>.
      attr_accessor :use32bit_worker_process

      # @return [Boolean] <code>true</code> if WebSocket is enabled; otherwise,
      # <code>false</code>.
      attr_accessor :web_sockets_enabled

      # @return [Boolean] <code>true</code> if Always On is enabled; otherwise,
      # <code>false</code>.
      attr_accessor :always_on

      # @return [String] Java version.
      attr_accessor :java_version

      # @return [String] Java container.
      attr_accessor :java_container

      # @return [String] Java container version.
      attr_accessor :java_container_version

      # @return [String] App command line to launch.
      attr_accessor :app_command_line

      # @return [ManagedPipelineMode] Managed pipeline mode. Possible values
      # include: 'Integrated', 'Classic'
      attr_accessor :managed_pipeline_mode

      # @return [Array<VirtualApplication>] Virtual applications.
      attr_accessor :virtual_applications

      # @return [SiteLoadBalancing] Site load balancing. Possible values
      # include: 'WeightedRoundRobin', 'LeastRequests', 'LeastResponseTime',
      # 'WeightedTotalTraffic', 'RequestHash'
      attr_accessor :load_balancing

      # @return [Experiments] This is work around for polymophic types.
      attr_accessor :experiments

      # @return [SiteLimits] Site limits.
      attr_accessor :limits

      # @return [Boolean] <code>true</code> if Auto Heal is enabled; otherwise,
      # <code>false</code>.
      attr_accessor :auto_heal_enabled

      # @return [AutoHealRules] Auto Heal rules.
      attr_accessor :auto_heal_rules

      # @return [String] Tracing options.
      attr_accessor :tracing_options

      # @return [String] Virtual Network name.
      attr_accessor :vnet_name

      # @return [CorsSettings] Cross-Origin Resource Sharing (CORS) settings.
      attr_accessor :cors

      # @return [PushSettings] Push endpoint settings.
      attr_accessor :push

      # @return [ApiDefinitionInfo] Information about the formal API definition
      # for the app.
      attr_accessor :api_definition

      # @return [String] Auto-swap slot name.
      attr_accessor :auto_swap_slot_name

      # @return [Boolean] <code>true</code> to enable local MySQL; otherwise,
      # <code>false</code>. Default value: false .
      attr_accessor :local_my_sql_enabled

      # @return [Array<IpSecurityRestriction>] IP security restrictions.
      attr_accessor :ip_security_restrictions


      #
      # Mapper for SiteConfigResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SiteConfigResource',
          type: {
            name: 'Composite',
            class_name: 'SiteConfigResource',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              number_of_workers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.numberOfWorkers',
                type: {
                  name: 'Number'
                }
              },
              default_documents: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.defaultDocuments',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              net_framework_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.netFrameworkVersion',
                default_value: 'v4.6',
                type: {
                  name: 'String'
                }
              },
              php_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.phpVersion',
                type: {
                  name: 'String'
                }
              },
              python_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.pythonVersion',
                type: {
                  name: 'String'
                }
              },
              node_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.nodeVersion',
                type: {
                  name: 'String'
                }
              },
              linux_fx_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.linuxFxVersion',
                type: {
                  name: 'String'
                }
              },
              request_tracing_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.requestTracingEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              request_tracing_expiration_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.requestTracingExpirationTime',
                type: {
                  name: 'DateTime'
                }
              },
              remote_debugging_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.remoteDebuggingEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              remote_debugging_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.remoteDebuggingVersion',
                type: {
                  name: 'String'
                }
              },
              http_logging_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.httpLoggingEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              logs_directory_size_limit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.logsDirectorySizeLimit',
                type: {
                  name: 'Number'
                }
              },
              detailed_error_logging_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.detailedErrorLoggingEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              publishing_username: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publishingUsername',
                type: {
                  name: 'String'
                }
              },
              app_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.appSettings',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NameValuePairElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NameValuePair'
                      }
                  }
                }
              },
              connection_strings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.connectionStrings',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ConnStringInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConnStringInfo'
                      }
                  }
                }
              },
              machine_key: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.machineKey',
                type: {
                  name: 'Composite',
                  class_name: 'SiteMachineKey'
                }
              },
              handler_mappings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.handlerMappings',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HandlerMappingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HandlerMapping'
                      }
                  }
                }
              },
              document_root: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.documentRoot',
                type: {
                  name: 'String'
                }
              },
              scm_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.scmType',
                type: {
                  name: 'String'
                }
              },
              use32bit_worker_process: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.use32BitWorkerProcess',
                type: {
                  name: 'Boolean'
                }
              },
              web_sockets_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.webSocketsEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              always_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.alwaysOn',
                type: {
                  name: 'Boolean'
                }
              },
              java_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.javaVersion',
                type: {
                  name: 'String'
                }
              },
              java_container: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.javaContainer',
                type: {
                  name: 'String'
                }
              },
              java_container_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.javaContainerVersion',
                type: {
                  name: 'String'
                }
              },
              app_command_line: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.appCommandLine',
                type: {
                  name: 'String'
                }
              },
              managed_pipeline_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.managedPipelineMode',
                type: {
                  name: 'Enum',
                  module: 'ManagedPipelineMode'
                }
              },
              virtual_applications: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualApplications',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualApplicationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualApplication'
                      }
                  }
                }
              },
              load_balancing: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.loadBalancing',
                type: {
                  name: 'Enum',
                  module: 'SiteLoadBalancing'
                }
              },
              experiments: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.experiments',
                type: {
                  name: 'Composite',
                  class_name: 'Experiments'
                }
              },
              limits: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.limits',
                type: {
                  name: 'Composite',
                  class_name: 'SiteLimits'
                }
              },
              auto_heal_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.autoHealEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              auto_heal_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.autoHealRules',
                type: {
                  name: 'Composite',
                  class_name: 'AutoHealRules'
                }
              },
              tracing_options: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.tracingOptions',
                type: {
                  name: 'String'
                }
              },
              vnet_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vnetName',
                type: {
                  name: 'String'
                }
              },
              cors: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.cors',
                type: {
                  name: 'Composite',
                  class_name: 'CorsSettings'
                }
              },
              push: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.push',
                type: {
                  name: 'Composite',
                  class_name: 'PushSettings'
                }
              },
              api_definition: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.apiDefinition',
                type: {
                  name: 'Composite',
                  class_name: 'ApiDefinitionInfo'
                }
              },
              auto_swap_slot_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.autoSwapSlotName',
                type: {
                  name: 'String'
                }
              },
              local_my_sql_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.localMySqlEnabled',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              ip_security_restrictions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ipSecurityRestrictions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IpSecurityRestrictionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IpSecurityRestriction'
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
