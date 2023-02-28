module Stratosphere.Lambda.Version (
        module Exports, Version(..), mkVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.Version.ProvisionedConcurrencyConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Version
  = Version {codeSha256 :: (Prelude.Maybe (Value Prelude.Text)),
             description :: (Prelude.Maybe (Value Prelude.Text)),
             functionName :: (Value Prelude.Text),
             provisionedConcurrencyConfig :: (Prelude.Maybe ProvisionedConcurrencyConfigurationProperty)}
mkVersion :: Value Prelude.Text -> Version
mkVersion functionName
  = Version
      {functionName = functionName, codeSha256 = Prelude.Nothing,
       description = Prelude.Nothing,
       provisionedConcurrencyConfig = Prelude.Nothing}
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
                                 Prelude.<$> provisionedConcurrencyConfig]))}
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
                    Prelude.<$> provisionedConcurrencyConfig])))
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