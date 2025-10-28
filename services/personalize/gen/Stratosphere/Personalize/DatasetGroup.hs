module Stratosphere.Personalize.DatasetGroup (
        DatasetGroup(..), mkDatasetGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatasetGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-datasetgroup.html>
    DatasetGroup {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-datasetgroup.html#cfn-personalize-datasetgroup-domain>
                  domain :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-datasetgroup.html#cfn-personalize-datasetgroup-kmskeyarn>
                  kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-datasetgroup.html#cfn-personalize-datasetgroup-name>
                  name :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-personalize-datasetgroup.html#cfn-personalize-datasetgroup-rolearn>
                  roleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatasetGroup :: Value Prelude.Text -> DatasetGroup
mkDatasetGroup name
  = DatasetGroup
      {haddock_workaround_ = (), name = name, domain = Prelude.Nothing,
       kmsKeyArn = Prelude.Nothing, roleArn = Prelude.Nothing}
instance ToResourceProperties DatasetGroup where
  toResourceProperties DatasetGroup {..}
    = ResourceProperties
        {awsType = "AWS::Personalize::DatasetGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Domain" Prelude.<$> domain,
                               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn]))}
instance JSON.ToJSON DatasetGroup where
  toJSON DatasetGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Domain" Prelude.<$> domain,
                  (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn])))
instance Property "Domain" DatasetGroup where
  type PropertyType "Domain" DatasetGroup = Value Prelude.Text
  set newValue DatasetGroup {..}
    = DatasetGroup {domain = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" DatasetGroup where
  type PropertyType "KmsKeyArn" DatasetGroup = Value Prelude.Text
  set newValue DatasetGroup {..}
    = DatasetGroup {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "Name" DatasetGroup where
  type PropertyType "Name" DatasetGroup = Value Prelude.Text
  set newValue DatasetGroup {..} = DatasetGroup {name = newValue, ..}
instance Property "RoleArn" DatasetGroup where
  type PropertyType "RoleArn" DatasetGroup = Value Prelude.Text
  set newValue DatasetGroup {..}
    = DatasetGroup {roleArn = Prelude.pure newValue, ..}