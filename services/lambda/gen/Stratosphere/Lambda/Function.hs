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
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html>
    Function {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-architectures>
              architectures :: (Prelude.Maybe (ValueList Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-code>
              code :: CodeProperty,
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-codesigningconfigarn>
              codeSigningConfigArn :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-deadletterconfig>
              deadLetterConfig :: (Prelude.Maybe DeadLetterConfigProperty),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-description>
              description :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-environment>
              environment :: (Prelude.Maybe EnvironmentProperty),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-ephemeralstorage>
              ephemeralStorage :: (Prelude.Maybe EphemeralStorageProperty),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-filesystemconfigs>
              fileSystemConfigs :: (Prelude.Maybe [FileSystemConfigProperty]),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-functionname>
              functionName :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-handler>
              handler :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-imageconfig>
              imageConfig :: (Prelude.Maybe ImageConfigProperty),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-kmskeyarn>
              kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-layers>
              layers :: (Prelude.Maybe (ValueList Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-loggingconfig>
              loggingConfig :: (Prelude.Maybe LoggingConfigProperty),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-memorysize>
              memorySize :: (Prelude.Maybe (Value Prelude.Integer)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-packagetype>
              packageType :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-recursiveloop>
              recursiveLoop :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-reservedconcurrentexecutions>
              reservedConcurrentExecutions :: (Prelude.Maybe (Value Prelude.Integer)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-role>
              role :: (Value Prelude.Text),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-runtime>
              runtime :: (Prelude.Maybe (Value Prelude.Text)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-runtimemanagementconfig>
              runtimeManagementConfig :: (Prelude.Maybe RuntimeManagementConfigProperty),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-snapstart>
              snapStart :: (Prelude.Maybe SnapStartProperty),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-tags>
              tags :: (Prelude.Maybe [Tag]),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-timeout>
              timeout :: (Prelude.Maybe (Value Prelude.Integer)),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-tracingconfig>
              tracingConfig :: (Prelude.Maybe TracingConfigProperty),
              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-vpcconfig>
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
       recursiveLoop = Prelude.Nothing,
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
                               (JSON..=) "RecursiveLoop" Prelude.<$> recursiveLoop,
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
                  (JSON..=) "RecursiveLoop" Prelude.<$> recursiveLoop,
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
instance Property "RecursiveLoop" Function where
  type PropertyType "RecursiveLoop" Function = Value Prelude.Text
  set newValue Function {..}
    = Function {recursiveLoop = Prelude.pure newValue, ..}
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