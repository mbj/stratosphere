module Stratosphere.Forecast.DatasetGroup (
        DatasetGroup(..), mkDatasetGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DatasetGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-forecast-datasetgroup.html>
    DatasetGroup {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-forecast-datasetgroup.html#cfn-forecast-datasetgroup-datasetarns>
                  datasetArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-forecast-datasetgroup.html#cfn-forecast-datasetgroup-datasetgroupname>
                  datasetGroupName :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-forecast-datasetgroup.html#cfn-forecast-datasetgroup-domain>
                  domain :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-forecast-datasetgroup.html#cfn-forecast-datasetgroup-tags>
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatasetGroup ::
  Value Prelude.Text -> Value Prelude.Text -> DatasetGroup
mkDatasetGroup datasetGroupName domain
  = DatasetGroup
      {haddock_workaround_ = (), datasetGroupName = datasetGroupName,
       domain = domain, datasetArns = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DatasetGroup where
  toResourceProperties DatasetGroup {..}
    = ResourceProperties
        {awsType = "AWS::Forecast::DatasetGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatasetGroupName" JSON..= datasetGroupName,
                            "Domain" JSON..= domain]
                           (Prelude.catMaybes
                              [(JSON..=) "DatasetArns" Prelude.<$> datasetArns,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DatasetGroup where
  toJSON DatasetGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatasetGroupName" JSON..= datasetGroupName,
               "Domain" JSON..= domain]
              (Prelude.catMaybes
                 [(JSON..=) "DatasetArns" Prelude.<$> datasetArns,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DatasetArns" DatasetGroup where
  type PropertyType "DatasetArns" DatasetGroup = ValueList Prelude.Text
  set newValue DatasetGroup {..}
    = DatasetGroup {datasetArns = Prelude.pure newValue, ..}
instance Property "DatasetGroupName" DatasetGroup where
  type PropertyType "DatasetGroupName" DatasetGroup = Value Prelude.Text
  set newValue DatasetGroup {..}
    = DatasetGroup {datasetGroupName = newValue, ..}
instance Property "Domain" DatasetGroup where
  type PropertyType "Domain" DatasetGroup = Value Prelude.Text
  set newValue DatasetGroup {..}
    = DatasetGroup {domain = newValue, ..}
instance Property "Tags" DatasetGroup where
  type PropertyType "Tags" DatasetGroup = [Tag]
  set newValue DatasetGroup {..}
    = DatasetGroup {tags = Prelude.pure newValue, ..}