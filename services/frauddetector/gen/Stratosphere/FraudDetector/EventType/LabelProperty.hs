module Stratosphere.FraudDetector.EventType.LabelProperty (
        LabelProperty(..), mkLabelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LabelProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-frauddetector-eventtype-label.html>
    LabelProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-frauddetector-eventtype-label.html#cfn-frauddetector-eventtype-label-arn>
                   arn :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-frauddetector-eventtype-label.html#cfn-frauddetector-eventtype-label-createdtime>
                   createdTime :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-frauddetector-eventtype-label.html#cfn-frauddetector-eventtype-label-description>
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-frauddetector-eventtype-label.html#cfn-frauddetector-eventtype-label-inline>
                   inline :: (Prelude.Maybe (Value Prelude.Bool)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-frauddetector-eventtype-label.html#cfn-frauddetector-eventtype-label-lastupdatedtime>
                   lastUpdatedTime :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-frauddetector-eventtype-label.html#cfn-frauddetector-eventtype-label-name>
                   name :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-frauddetector-eventtype-label.html#cfn-frauddetector-eventtype-label-tags>
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLabelProperty :: LabelProperty
mkLabelProperty
  = LabelProperty
      {haddock_workaround_ = (), arn = Prelude.Nothing,
       createdTime = Prelude.Nothing, description = Prelude.Nothing,
       inline = Prelude.Nothing, lastUpdatedTime = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties LabelProperty where
  toResourceProperties LabelProperty {..}
    = ResourceProperties
        {awsType = "AWS::FraudDetector::EventType.Label",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Arn" Prelude.<$> arn,
                            (JSON..=) "CreatedTime" Prelude.<$> createdTime,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Inline" Prelude.<$> inline,
                            (JSON..=) "LastUpdatedTime" Prelude.<$> lastUpdatedTime,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON LabelProperty where
  toJSON LabelProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Arn" Prelude.<$> arn,
               (JSON..=) "CreatedTime" Prelude.<$> createdTime,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Inline" Prelude.<$> inline,
               (JSON..=) "LastUpdatedTime" Prelude.<$> lastUpdatedTime,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Arn" LabelProperty where
  type PropertyType "Arn" LabelProperty = Value Prelude.Text
  set newValue LabelProperty {..}
    = LabelProperty {arn = Prelude.pure newValue, ..}
instance Property "CreatedTime" LabelProperty where
  type PropertyType "CreatedTime" LabelProperty = Value Prelude.Text
  set newValue LabelProperty {..}
    = LabelProperty {createdTime = Prelude.pure newValue, ..}
instance Property "Description" LabelProperty where
  type PropertyType "Description" LabelProperty = Value Prelude.Text
  set newValue LabelProperty {..}
    = LabelProperty {description = Prelude.pure newValue, ..}
instance Property "Inline" LabelProperty where
  type PropertyType "Inline" LabelProperty = Value Prelude.Bool
  set newValue LabelProperty {..}
    = LabelProperty {inline = Prelude.pure newValue, ..}
instance Property "LastUpdatedTime" LabelProperty where
  type PropertyType "LastUpdatedTime" LabelProperty = Value Prelude.Text
  set newValue LabelProperty {..}
    = LabelProperty {lastUpdatedTime = Prelude.pure newValue, ..}
instance Property "Name" LabelProperty where
  type PropertyType "Name" LabelProperty = Value Prelude.Text
  set newValue LabelProperty {..}
    = LabelProperty {name = Prelude.pure newValue, ..}
instance Property "Tags" LabelProperty where
  type PropertyType "Tags" LabelProperty = [Tag]
  set newValue LabelProperty {..}
    = LabelProperty {tags = Prelude.pure newValue, ..}