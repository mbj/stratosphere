module Stratosphere.Lambda.Function (
        module Exports, Function(..), mkFunction
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.Function.CodeProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.Function.DeadLetterConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.Function.EnvironmentProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.Function.EphemeralStorageProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.Function.FileSystemConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.Function.ImageConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.Function.LoggingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.Function.RuntimeManagementConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.Function.SnapStartProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.Function.TracingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.Function.VpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Function
  = Function {architectures :: (Prelude.Maybe (ValueList Prelude.Text)),
              code :: CodeProperty,
              codeSigningConfigArn :: (Prelude.Maybe (Value Prelude.Text)),
              deadLetterConfig :: (Prelude.Maybe DeadLetterConfigProperty),
              description :: (Prelude.Maybe (Value Prelude.Text)),
              environment :: (Prelude.Maybe EnvironmentProperty),
              ephemeralStorage :: (Prelude.Maybe EphemeralStorageProperty),
              fileSystemConfigs :: (Prelude.Maybe [FileSystemConfigProperty]),
              functionName :: (Prelude.Maybe (Value Prelude.Text)),
              handler :: (Prelude.Maybe (Value Prelude.Text)),
              imageConfig :: (Prelude.Maybe ImageConfigProperty),
              kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
              layers :: (Prelude.Maybe (ValueList Prelude.Text)),
              loggingConfig :: (Prelude.Maybe LoggingConfigProperty),
              memorySize :: (Prelude.Maybe (Value Prelude.Integer)),
              packageType :: (Prelude.Maybe (Value Prelude.Text)),
              reservedConcurrentExecutions :: (Prelude.Maybe (Value Prelude.Integer)),
              role :: (Value Prelude.Text),
              runtime :: (Prelude.Maybe (Value Prelude.Text)),
              runtimeManagementConfig :: (Prelude.Maybe RuntimeManagementConfigProperty),
              snapStart :: (Prelude.Maybe SnapStartProperty),
              tags :: (Prelude.Maybe [Tag]),
              timeout :: (Prelude.Maybe (Value Prelude.Integer)),
              tracingConfig :: (Prelude.Maybe TracingConfigProperty),
              vpcConfig :: (Prelude.Maybe VpcConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFunction :: CodeProperty -> Value Prelude.Text -> Function
mkFunction code role
  = Function
      {code = code, role = role, architectures = Prelude.Nothing,
       codeSigningConfigArn = Prelude.Nothing,
       deadLetterConfig = Prelude.Nothing, description = Prelude.Nothing,
       environment = Prelude.Nothing, ephemeralStorage = Prelude.Nothing,
       fileSystemConfigs = Prelude.Nothing,
       functionName = Prelude.Nothing, handler = Prelude.Nothing,
       imageConfig = Prelude.Nothing, kmsKeyArn = Prelude.Nothing,
       layers = Prelude.Nothing, loggingConfig = Prelude.Nothing,
       memorySize = Prelude.Nothing, packageType = Prelude.Nothing,
       reservedConcurrentExecutions = Prelude.Nothing,
       runtime = Prelude.Nothing,
       runtimeManagementConfig = Prelude.Nothing,
       snapStart = Prelude.Nothing, tags = Prelude.Nothing,
       timeout = Prelude.Nothing, tracingConfig = Prelude.Nothing,
       vpcConfig = Prelude.Nothing}
instance ToResourceProperties Function where
  toResourceProperties Function {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Function", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Code" JSON..= code, "Role" JSON..= role]
                           (Prelude.catMaybes
                              [(JSON..=) "Architectures" Prelude.<$> architectures,
                               (JSON..=) "CodeSigningConfigArn" Prelude.<$> codeSigningConfigArn,
                               (JSON..=) "DeadLetterConfig" Prelude.<$> deadLetterConfig,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Environment" Prelude.<$> environment,
                               (JSON..=) "EphemeralStorage" Prelude.<$> ephemeralStorage,
                               (JSON..=) "FileSystemConfigs" Prelude.<$> fileSystemConfigs,
                               (JSON..=) "FunctionName" Prelude.<$> functionName,
                               (JSON..=) "Handler" Prelude.<$> handler,
                               (JSON..=) "ImageConfig" Prelude.<$> imageConfig,
                               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                               (JSON..=) "Layers" Prelude.<$> layers,
                               (JSON..=) "LoggingConfig" Prelude.<$> loggingConfig,
                               (JSON..=) "MemorySize" Prelude.<$> memorySize,
                               (JSON..=) "PackageType" Prelude.<$> packageType,
                               (JSON..=) "ReservedConcurrentExecutions"
                                 Prelude.<$> reservedConcurrentExecutions,
                               (JSON..=) "Runtime" Prelude.<$> runtime,
                               (JSON..=) "RuntimeManagementConfig"
                                 Prelude.<$> runtimeManagementConfig,
                               (JSON..=) "SnapStart" Prelude.<$> snapStart,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Timeout" Prelude.<$> timeout,
                               (JSON..=) "TracingConfig" Prelude.<$> tracingConfig,
                               (JSON..=) "VpcConfig" Prelude.<$> vpcConfig]))}
instance JSON.ToJSON Function where
  toJSON Function {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Code" JSON..= code, "Role" JSON..= role]
              (Prelude.catMaybes
                 [(JSON..=) "Architectures" Prelude.<$> architectures,
                  (JSON..=) "CodeSigningConfigArn" Prelude.<$> codeSigningConfigArn,
                  (JSON..=) "DeadLetterConfig" Prelude.<$> deadLetterConfig,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Environment" Prelude.<$> environment,
                  (JSON..=) "EphemeralStorage" Prelude.<$> ephemeralStorage,
                  (JSON..=) "FileSystemConfigs" Prelude.<$> fileSystemConfigs,
                  (JSON..=) "FunctionName" Prelude.<$> functionName,
                  (JSON..=) "Handler" Prelude.<$> handler,
                  (JSON..=) "ImageConfig" Prelude.<$> imageConfig,
                  (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                  (JSON..=) "Layers" Prelude.<$> layers,
                  (JSON..=) "LoggingConfig" Prelude.<$> loggingConfig,
                  (JSON..=) "MemorySize" Prelude.<$> memorySize,
                  (JSON..=) "PackageType" Prelude.<$> packageType,
                  (JSON..=) "ReservedConcurrentExecutions"
                    Prelude.<$> reservedConcurrentExecutions,
                  (JSON..=) "Runtime" Prelude.<$> runtime,
                  (JSON..=) "RuntimeManagementConfig"
                    Prelude.<$> runtimeManagementConfig,
                  (JSON..=) "SnapStart" Prelude.<$> snapStart,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Timeout" Prelude.<$> timeout,
                  (JSON..=) "TracingConfig" Prelude.<$> tracingConfig,
                  (JSON..=) "VpcConfig" Prelude.<$> vpcConfig])))
instance Property "Architectures" Function where
  type PropertyType "Architectures" Function = ValueList Prelude.Text
  set newValue Function {..}
    = Function {architectures = Prelude.pure newValue, ..}
instance Property "Code" Function where
  type PropertyType "Code" Function = CodeProperty
  set newValue Function {..} = Function {code = newValue, ..}
instance Property "CodeSigningConfigArn" Function where
  type PropertyType "CodeSigningConfigArn" Function = Value Prelude.Text
  set newValue Function {..}
    = Function {codeSigningConfigArn = Prelude.pure newValue, ..}
instance Property "DeadLetterConfig" Function where
  type PropertyType "DeadLetterConfig" Function = DeadLetterConfigProperty
  set newValue Function {..}
    = Function {deadLetterConfig = Prelude.pure newValue, ..}
instance Property "Description" Function where
  type PropertyType "Description" Function = Value Prelude.Text
  set newValue Function {..}
    = Function {description = Prelude.pure newValue, ..}
instance Property "Environment" Function where
  type PropertyType "Environment" Function = EnvironmentProperty
  set newValue Function {..}
    = Function {environment = Prelude.pure newValue, ..}
instance Property "EphemeralStorage" Function where
  type PropertyType "EphemeralStorage" Function = EphemeralStorageProperty
  set newValue Function {..}
    = Function {ephemeralStorage = Prelude.pure newValue, ..}
instance Property "FileSystemConfigs" Function where
  type PropertyType "FileSystemConfigs" Function = [FileSystemConfigProperty]
  set newValue Function {..}
    = Function {fileSystemConfigs = Prelude.pure newValue, ..}
instance Property "FunctionName" Function where
  type PropertyType "FunctionName" Function = Value Prelude.Text
  set newValue Function {..}
    = Function {functionName = Prelude.pure newValue, ..}
instance Property "Handler" Function where
  type PropertyType "Handler" Function = Value Prelude.Text
  set newValue Function {..}
    = Function {handler = Prelude.pure newValue, ..}
instance Property "ImageConfig" Function where
  type PropertyType "ImageConfig" Function = ImageConfigProperty
  set newValue Function {..}
    = Function {imageConfig = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" Function where
  type PropertyType "KmsKeyArn" Function = Value Prelude.Text
  set newValue Function {..}
    = Function {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "Layers" Function where
  type PropertyType "Layers" Function = ValueList Prelude.Text
  set newValue Function {..}
    = Function {layers = Prelude.pure newValue, ..}
instance Property "LoggingConfig" Function where
  type PropertyType "LoggingConfig" Function = LoggingConfigProperty
  set newValue Function {..}
    = Function {loggingConfig = Prelude.pure newValue, ..}
instance Property "MemorySize" Function where
  type PropertyType "MemorySize" Function = Value Prelude.Integer
  set newValue Function {..}
    = Function {memorySize = Prelude.pure newValue, ..}
instance Property "PackageType" Function where
  type PropertyType "PackageType" Function = Value Prelude.Text
  set newValue Function {..}
    = Function {packageType = Prelude.pure newValue, ..}
instance Property "ReservedConcurrentExecutions" Function where
  type PropertyType "ReservedConcurrentExecutions" Function = Value Prelude.Integer
  set newValue Function {..}
    = Function
        {reservedConcurrentExecutions = Prelude.pure newValue, ..}
instance Property "Role" Function where
  type PropertyType "Role" Function = Value Prelude.Text
  set newValue Function {..} = Function {role = newValue, ..}
instance Property "Runtime" Function where
  type PropertyType "Runtime" Function = Value Prelude.Text
  set newValue Function {..}
    = Function {runtime = Prelude.pure newValue, ..}
instance Property "RuntimeManagementConfig" Function where
  type PropertyType "RuntimeManagementConfig" Function = RuntimeManagementConfigProperty
  set newValue Function {..}
    = Function {runtimeManagementConfig = Prelude.pure newValue, ..}
instance Property "SnapStart" Function where
  type PropertyType "SnapStart" Function = SnapStartProperty
  set newValue Function {..}
    = Function {snapStart = Prelude.pure newValue, ..}
instance Property "Tags" Function where
  type PropertyType "Tags" Function = [Tag]
  set newValue Function {..}
    = Function {tags = Prelude.pure newValue, ..}
instance Property "Timeout" Function where
  type PropertyType "Timeout" Function = Value Prelude.Integer
  set newValue Function {..}
    = Function {timeout = Prelude.pure newValue, ..}
instance Property "TracingConfig" Function where
  type PropertyType "TracingConfig" Function = TracingConfigProperty
  set newValue Function {..}
    = Function {tracingConfig = Prelude.pure newValue, ..}
instance Property "VpcConfig" Function where
  type PropertyType "VpcConfig" Function = VpcConfigProperty
  set newValue Function {..}
    = Function {vpcConfig = Prelude.pure newValue, ..}