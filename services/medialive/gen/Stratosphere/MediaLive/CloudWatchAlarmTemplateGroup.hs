module Stratosphere.MediaLive.CloudWatchAlarmTemplateGroup (
        CloudWatchAlarmTemplateGroup(..), mkCloudWatchAlarmTemplateGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchAlarmTemplateGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-cloudwatchalarmtemplategroup.html>
    CloudWatchAlarmTemplateGroup {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-cloudwatchalarmtemplategroup.html#cfn-medialive-cloudwatchalarmtemplategroup-description>
                                  description :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-cloudwatchalarmtemplategroup.html#cfn-medialive-cloudwatchalarmtemplategroup-name>
                                  name :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-cloudwatchalarmtemplategroup.html#cfn-medialive-cloudwatchalarmtemplategroup-tags>
                                  tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchAlarmTemplateGroup ::
  Value Prelude.Text -> CloudWatchAlarmTemplateGroup
mkCloudWatchAlarmTemplateGroup name
  = CloudWatchAlarmTemplateGroup
      {haddock_workaround_ = (), name = name,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties CloudWatchAlarmTemplateGroup where
  toResourceProperties CloudWatchAlarmTemplateGroup {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::CloudWatchAlarmTemplateGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CloudWatchAlarmTemplateGroup where
  toJSON CloudWatchAlarmTemplateGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" CloudWatchAlarmTemplateGroup where
  type PropertyType "Description" CloudWatchAlarmTemplateGroup = Value Prelude.Text
  set newValue CloudWatchAlarmTemplateGroup {..}
    = CloudWatchAlarmTemplateGroup
        {description = Prelude.pure newValue, ..}
instance Property "Name" CloudWatchAlarmTemplateGroup where
  type PropertyType "Name" CloudWatchAlarmTemplateGroup = Value Prelude.Text
  set newValue CloudWatchAlarmTemplateGroup {..}
    = CloudWatchAlarmTemplateGroup {name = newValue, ..}
instance Property "Tags" CloudWatchAlarmTemplateGroup where
  type PropertyType "Tags" CloudWatchAlarmTemplateGroup = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue CloudWatchAlarmTemplateGroup {..}
    = CloudWatchAlarmTemplateGroup {tags = Prelude.pure newValue, ..}