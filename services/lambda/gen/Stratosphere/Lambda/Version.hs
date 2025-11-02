module Stratosphere.Lambda.Version (
        module Exports, Version(..), mkVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.Version.ProvisionedConcurrencyConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.Version.RuntimePolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Version
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html>
    Version {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html#cfn-lambda-version-codesha256>
             codeSha256 :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html#cfn-lambda-version-description>
             description :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html#cfn-lambda-version-functionname>
             functionName :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html#cfn-lambda-version-provisionedconcurrencyconfig>
             provisionedConcurrencyConfig :: (Prelude.Maybe ProvisionedConcurrencyConfigurationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html#cfn-lambda-version-runtimepolicy>
             runtimePolicy :: (Prelude.Maybe RuntimePolicyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVersion :: Value Prelude.Text -> Version
mkVersion functionName
  = Version
      {haddock_workaround_ = (), functionName = functionName,
       codeSha256 = Prelude.Nothing, description = Prelude.Nothing,
       provisionedConcurrencyConfig = Prelude.Nothing,
       runtimePolicy = Prelude.Nothing}
instance ToResourceProperties Version where
  toResourceProperties Version {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Version", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FunctionName" JSON..= functionName]
                           (Prelude.catMaybes
                              [(JSON..=) "CodeSha256" Prelude.<$> codeSha256,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ProvisionedConcurrencyConfig"
                                 Prelude.<$> provisionedConcurrencyConfig,
                               (JSON..=) "RuntimePolicy" Prelude.<$> runtimePolicy]))}
instance JSON.ToJSON Version where
  toJSON Version {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FunctionName" JSON..= functionName]
              (Prelude.catMaybes
                 [(JSON..=) "CodeSha256" Prelude.<$> codeSha256,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ProvisionedConcurrencyConfig"
                    Prelude.<$> provisionedConcurrencyConfig,
                  (JSON..=) "RuntimePolicy" Prelude.<$> runtimePolicy])))
instance Property "CodeSha256" Version where
  type PropertyType "CodeSha256" Version = Value Prelude.Text
  set newValue Version {..}
    = Version {codeSha256 = Prelude.pure newValue, ..}
instance Property "Description" Version where
  type PropertyType "Description" Version = Value Prelude.Text
  set newValue Version {..}
    = Version {description = Prelude.pure newValue, ..}
instance Property "FunctionName" Version where
  type PropertyType "FunctionName" Version = Value Prelude.Text
  set newValue Version {..} = Version {functionName = newValue, ..}
instance Property "ProvisionedConcurrencyConfig" Version where
  type PropertyType "ProvisionedConcurrencyConfig" Version = ProvisionedConcurrencyConfigurationProperty
  set newValue Version {..}
    = Version
        {provisionedConcurrencyConfig = Prelude.pure newValue, ..}
instance Property "RuntimePolicy" Version where
  type PropertyType "RuntimePolicy" Version = RuntimePolicyProperty
  set newValue Version {..}
    = Version {runtimePolicy = Prelude.pure newValue, ..}