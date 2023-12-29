module Stratosphere.Lambda.CodeSigningConfig (
        module Exports, CodeSigningConfig(..), mkCodeSigningConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.CodeSigningConfig.AllowedPublishersProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.CodeSigningConfig.CodeSigningPoliciesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CodeSigningConfig
  = CodeSigningConfig {allowedPublishers :: AllowedPublishersProperty,
                       codeSigningPolicies :: (Prelude.Maybe CodeSigningPoliciesProperty),
                       description :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeSigningConfig ::
  AllowedPublishersProperty -> CodeSigningConfig
mkCodeSigningConfig allowedPublishers
  = CodeSigningConfig
      {allowedPublishers = allowedPublishers,
       codeSigningPolicies = Prelude.Nothing,
       description = Prelude.Nothing}
instance ToResourceProperties CodeSigningConfig where
  toResourceProperties CodeSigningConfig {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::CodeSigningConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AllowedPublishers" JSON..= allowedPublishers]
                           (Prelude.catMaybes
                              [(JSON..=) "CodeSigningPolicies" Prelude.<$> codeSigningPolicies,
                               (JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON CodeSigningConfig where
  toJSON CodeSigningConfig {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AllowedPublishers" JSON..= allowedPublishers]
              (Prelude.catMaybes
                 [(JSON..=) "CodeSigningPolicies" Prelude.<$> codeSigningPolicies,
                  (JSON..=) "Description" Prelude.<$> description])))
instance Property "AllowedPublishers" CodeSigningConfig where
  type PropertyType "AllowedPublishers" CodeSigningConfig = AllowedPublishersProperty
  set newValue CodeSigningConfig {..}
    = CodeSigningConfig {allowedPublishers = newValue, ..}
instance Property "CodeSigningPolicies" CodeSigningConfig where
  type PropertyType "CodeSigningPolicies" CodeSigningConfig = CodeSigningPoliciesProperty
  set newValue CodeSigningConfig {..}
    = CodeSigningConfig
        {codeSigningPolicies = Prelude.pure newValue, ..}
instance Property "Description" CodeSigningConfig where
  type PropertyType "Description" CodeSigningConfig = Value Prelude.Text
  set newValue CodeSigningConfig {..}
    = CodeSigningConfig {description = Prelude.pure newValue, ..}