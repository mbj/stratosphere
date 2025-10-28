module Stratosphere.CleanRoomsML.TrainingDataset (
        module Exports, TrainingDataset(..), mkTrainingDataset
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRoomsML.TrainingDataset.DatasetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TrainingDataset
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanroomsml-trainingdataset.html>
    TrainingDataset {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanroomsml-trainingdataset.html#cfn-cleanroomsml-trainingdataset-description>
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanroomsml-trainingdataset.html#cfn-cleanroomsml-trainingdataset-name>
                     name :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanroomsml-trainingdataset.html#cfn-cleanroomsml-trainingdataset-rolearn>
                     roleArn :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanroomsml-trainingdataset.html#cfn-cleanroomsml-trainingdataset-tags>
                     tags :: (Prelude.Maybe [Tag]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanroomsml-trainingdataset.html#cfn-cleanroomsml-trainingdataset-trainingdata>
                     trainingData :: [DatasetProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrainingDataset ::
  Value Prelude.Text
  -> Value Prelude.Text -> [DatasetProperty] -> TrainingDataset
mkTrainingDataset name roleArn trainingData
  = TrainingDataset
      {haddock_workaround_ = (), name = name, roleArn = roleArn,
       trainingData = trainingData, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties TrainingDataset where
  toResourceProperties TrainingDataset {..}
    = ResourceProperties
        {awsType = "AWS::CleanRoomsML::TrainingDataset",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "RoleArn" JSON..= roleArn,
                            "TrainingData" JSON..= trainingData]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON TrainingDataset where
  toJSON TrainingDataset {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "RoleArn" JSON..= roleArn,
               "TrainingData" JSON..= trainingData]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" TrainingDataset where
  type PropertyType "Description" TrainingDataset = Value Prelude.Text
  set newValue TrainingDataset {..}
    = TrainingDataset {description = Prelude.pure newValue, ..}
instance Property "Name" TrainingDataset where
  type PropertyType "Name" TrainingDataset = Value Prelude.Text
  set newValue TrainingDataset {..}
    = TrainingDataset {name = newValue, ..}
instance Property "RoleArn" TrainingDataset where
  type PropertyType "RoleArn" TrainingDataset = Value Prelude.Text
  set newValue TrainingDataset {..}
    = TrainingDataset {roleArn = newValue, ..}
instance Property "Tags" TrainingDataset where
  type PropertyType "Tags" TrainingDataset = [Tag]
  set newValue TrainingDataset {..}
    = TrainingDataset {tags = Prelude.pure newValue, ..}
instance Property "TrainingData" TrainingDataset where
  type PropertyType "TrainingData" TrainingDataset = [DatasetProperty]
  set newValue TrainingDataset {..}
    = TrainingDataset {trainingData = newValue, ..}