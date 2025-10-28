module Stratosphere.Glue.UsageProfile (
        module Exports, UsageProfile(..), mkUsageProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.UsageProfile.ProfileConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data UsageProfile
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-usageprofile.html>
    UsageProfile {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-usageprofile.html#cfn-glue-usageprofile-configuration>
                  configuration :: (Prelude.Maybe ProfileConfigurationProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-usageprofile.html#cfn-glue-usageprofile-description>
                  description :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-usageprofile.html#cfn-glue-usageprofile-name>
                  name :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-usageprofile.html#cfn-glue-usageprofile-tags>
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUsageProfile :: Value Prelude.Text -> UsageProfile
mkUsageProfile name
  = UsageProfile
      {haddock_workaround_ = (), name = name,
       configuration = Prelude.Nothing, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties UsageProfile where
  toResourceProperties UsageProfile {..}
    = ResourceProperties
        {awsType = "AWS::Glue::UsageProfile", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Configuration" Prelude.<$> configuration,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON UsageProfile where
  toJSON UsageProfile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Configuration" Prelude.<$> configuration,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Configuration" UsageProfile where
  type PropertyType "Configuration" UsageProfile = ProfileConfigurationProperty
  set newValue UsageProfile {..}
    = UsageProfile {configuration = Prelude.pure newValue, ..}
instance Property "Description" UsageProfile where
  type PropertyType "Description" UsageProfile = Value Prelude.Text
  set newValue UsageProfile {..}
    = UsageProfile {description = Prelude.pure newValue, ..}
instance Property "Name" UsageProfile where
  type PropertyType "Name" UsageProfile = Value Prelude.Text
  set newValue UsageProfile {..} = UsageProfile {name = newValue, ..}
instance Property "Tags" UsageProfile where
  type PropertyType "Tags" UsageProfile = [Tag]
  set newValue UsageProfile {..}
    = UsageProfile {tags = Prelude.pure newValue, ..}