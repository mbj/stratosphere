module Stratosphere.Lambda.CodeSigningConfig (
        module Exports, CodeSigningConfig(..), mkCodeSigningConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.CodeSigningConfig.AllowedPublishersProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.CodeSigningConfig.CodeSigningPoliciesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CodeSigningConfig
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-codesigningconfig.html>
    CodeSigningConfig {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-codesigningconfig.html#cfn-lambda-codesigningconfig-allowedpublishers>
                       allowedPublishers :: AllowedPublishersProperty,
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-codesigningconfig.html#cfn-lambda-codesigningconfig-codesigningpolicies>
                       codeSigningPolicies :: (Prelude.Maybe CodeSigningPoliciesProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-codesigningconfig.html#cfn-lambda-codesigningconfig-description>
                       description :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-codesigningconfig.html#cfn-lambda-codesigningconfig-tags>
                       tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeSigningConfig ::
  AllowedPublishersProperty -> CodeSigningConfig
mkCodeSigningConfig allowedPublishers
  = CodeSigningConfig
      {haddock_workaround_ = (), allowedPublishers = allowedPublishers,
       codeSigningPolicies = Prelude.Nothing,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties CodeSigningConfig where
  toResourceProperties CodeSigningConfig {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::CodeSigningConfig",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AllowedPublishers" JSON..= allowedPublishers]
                           (Prelude.catMaybes
                              [(JSON..=) "CodeSigningPolicies" Prelude.<$> codeSigningPolicies,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CodeSigningConfig where
  toJSON CodeSigningConfig {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AllowedPublishers" JSON..= allowedPublishers]
              (Prelude.catMaybes
                 [(JSON..=) "CodeSigningPolicies" Prelude.<$> codeSigningPolicies,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
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
instance Property "Tags" CodeSigningConfig where
  type PropertyType "Tags" CodeSigningConfig = [Tag]
  set newValue CodeSigningConfig {..}
    = CodeSigningConfig {tags = Prelude.pure newValue, ..}