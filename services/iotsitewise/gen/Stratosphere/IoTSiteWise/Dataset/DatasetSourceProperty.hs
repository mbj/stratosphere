module Stratosphere.IoTSiteWise.Dataset.DatasetSourceProperty (
        module Exports, DatasetSourceProperty(..), mkDatasetSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTSiteWise.Dataset.SourceDetailProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatasetSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-dataset-datasetsource.html>
    DatasetSourceProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-dataset-datasetsource.html#cfn-iotsitewise-dataset-datasetsource-sourcedetail>
                           sourceDetail :: (Prelude.Maybe SourceDetailProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-dataset-datasetsource.html#cfn-iotsitewise-dataset-datasetsource-sourceformat>
                           sourceFormat :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-dataset-datasetsource.html#cfn-iotsitewise-dataset-datasetsource-sourcetype>
                           sourceType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatasetSourceProperty ::
  Value Prelude.Text -> Value Prelude.Text -> DatasetSourceProperty
mkDatasetSourceProperty sourceFormat sourceType
  = DatasetSourceProperty
      {haddock_workaround_ = (), sourceFormat = sourceFormat,
       sourceType = sourceType, sourceDetail = Prelude.Nothing}
instance ToResourceProperties DatasetSourceProperty where
  toResourceProperties DatasetSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Dataset.DatasetSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SourceFormat" JSON..= sourceFormat,
                            "SourceType" JSON..= sourceType]
                           (Prelude.catMaybes
                              [(JSON..=) "SourceDetail" Prelude.<$> sourceDetail]))}
instance JSON.ToJSON DatasetSourceProperty where
  toJSON DatasetSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SourceFormat" JSON..= sourceFormat,
               "SourceType" JSON..= sourceType]
              (Prelude.catMaybes
                 [(JSON..=) "SourceDetail" Prelude.<$> sourceDetail])))
instance Property "SourceDetail" DatasetSourceProperty where
  type PropertyType "SourceDetail" DatasetSourceProperty = SourceDetailProperty
  set newValue DatasetSourceProperty {..}
    = DatasetSourceProperty {sourceDetail = Prelude.pure newValue, ..}
instance Property "SourceFormat" DatasetSourceProperty where
  type PropertyType "SourceFormat" DatasetSourceProperty = Value Prelude.Text
  set newValue DatasetSourceProperty {..}
    = DatasetSourceProperty {sourceFormat = newValue, ..}
instance Property "SourceType" DatasetSourceProperty where
  type PropertyType "SourceType" DatasetSourceProperty = Value Prelude.Text
  set newValue DatasetSourceProperty {..}
    = DatasetSourceProperty {sourceType = newValue, ..}