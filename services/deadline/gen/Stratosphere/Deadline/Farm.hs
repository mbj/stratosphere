module Stratosphere.Deadline.Farm (
        Farm(..), mkFarm
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Farm
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-farm.html>
    Farm {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-farm.html#cfn-deadline-farm-description>
          description :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-farm.html#cfn-deadline-farm-displayname>
          displayName :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-farm.html#cfn-deadline-farm-kmskeyarn>
          kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-farm.html#cfn-deadline-farm-tags>
          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFarm :: Value Prelude.Text -> Farm
mkFarm displayName
  = Farm
      {haddock_workaround_ = (), displayName = displayName,
       description = Prelude.Nothing, kmsKeyArn = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Farm where
  toResourceProperties Farm {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Farm", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DisplayName" JSON..= displayName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Farm where
  toJSON Farm {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DisplayName" JSON..= displayName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Farm where
  type PropertyType "Description" Farm = Value Prelude.Text
  set newValue Farm {..}
    = Farm {description = Prelude.pure newValue, ..}
instance Property "DisplayName" Farm where
  type PropertyType "DisplayName" Farm = Value Prelude.Text
  set newValue Farm {..} = Farm {displayName = newValue, ..}
instance Property "KmsKeyArn" Farm where
  type PropertyType "KmsKeyArn" Farm = Value Prelude.Text
  set newValue Farm {..}
    = Farm {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "Tags" Farm where
  type PropertyType "Tags" Farm = [Tag]
  set newValue Farm {..} = Farm {tags = Prelude.pure newValue, ..}