module Stratosphere.FraudDetector.Detector.EntityTypeProperty (
        EntityTypeProperty(..), mkEntityTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EntityTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-frauddetector-detector-entitytype.html>
    EntityTypeProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-frauddetector-detector-entitytype.html#cfn-frauddetector-detector-entitytype-arn>
                        arn :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-frauddetector-detector-entitytype.html#cfn-frauddetector-detector-entitytype-createdtime>
                        createdTime :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-frauddetector-detector-entitytype.html#cfn-frauddetector-detector-entitytype-description>
                        description :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-frauddetector-detector-entitytype.html#cfn-frauddetector-detector-entitytype-inline>
                        inline :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-frauddetector-detector-entitytype.html#cfn-frauddetector-detector-entitytype-lastupdatedtime>
                        lastUpdatedTime :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-frauddetector-detector-entitytype.html#cfn-frauddetector-detector-entitytype-name>
                        name :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-frauddetector-detector-entitytype.html#cfn-frauddetector-detector-entitytype-tags>
                        tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEntityTypeProperty :: EntityTypeProperty
mkEntityTypeProperty
  = EntityTypeProperty
      {haddock_workaround_ = (), arn = Prelude.Nothing,
       createdTime = Prelude.Nothing, description = Prelude.Nothing,
       inline = Prelude.Nothing, lastUpdatedTime = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties EntityTypeProperty where
  toResourceProperties EntityTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::FraudDetector::Detector.EntityType",
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
instance JSON.ToJSON EntityTypeProperty where
  toJSON EntityTypeProperty {..}
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
instance Property "Arn" EntityTypeProperty where
  type PropertyType "Arn" EntityTypeProperty = Value Prelude.Text
  set newValue EntityTypeProperty {..}
    = EntityTypeProperty {arn = Prelude.pure newValue, ..}
instance Property "CreatedTime" EntityTypeProperty where
  type PropertyType "CreatedTime" EntityTypeProperty = Value Prelude.Text
  set newValue EntityTypeProperty {..}
    = EntityTypeProperty {createdTime = Prelude.pure newValue, ..}
instance Property "Description" EntityTypeProperty where
  type PropertyType "Description" EntityTypeProperty = Value Prelude.Text
  set newValue EntityTypeProperty {..}
    = EntityTypeProperty {description = Prelude.pure newValue, ..}
instance Property "Inline" EntityTypeProperty where
  type PropertyType "Inline" EntityTypeProperty = Value Prelude.Bool
  set newValue EntityTypeProperty {..}
    = EntityTypeProperty {inline = Prelude.pure newValue, ..}
instance Property "LastUpdatedTime" EntityTypeProperty where
  type PropertyType "LastUpdatedTime" EntityTypeProperty = Value Prelude.Text
  set newValue EntityTypeProperty {..}
    = EntityTypeProperty {lastUpdatedTime = Prelude.pure newValue, ..}
instance Property "Name" EntityTypeProperty where
  type PropertyType "Name" EntityTypeProperty = Value Prelude.Text
  set newValue EntityTypeProperty {..}
    = EntityTypeProperty {name = Prelude.pure newValue, ..}
instance Property "Tags" EntityTypeProperty where
  type PropertyType "Tags" EntityTypeProperty = [Tag]
  set newValue EntityTypeProperty {..}
    = EntityTypeProperty {tags = Prelude.pure newValue, ..}