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
  = DatasetGroup {datasetArns :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                  datasetGroupName :: (Value Prelude.Text),
                  domain :: (Value Prelude.Text),
                  tags :: (Prelude.Maybe [Tag])}
mkDatasetGroup ::
  Value Prelude.Text -> Value Prelude.Text -> DatasetGroup
mkDatasetGroup datasetGroupName domain
  = DatasetGroup
      {datasetGroupName = datasetGroupName, domain = domain,
       datasetArns = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties DatasetGroup where
  toResourceProperties DatasetGroup {..}
    = ResourceProperties
        {awsType = "AWS::Forecast::DatasetGroup",
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
  type PropertyType "DatasetArns" DatasetGroup = ValueList (Value Prelude.Text)
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