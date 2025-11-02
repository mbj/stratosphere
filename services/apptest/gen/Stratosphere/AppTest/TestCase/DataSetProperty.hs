module Stratosphere.AppTest.TestCase.DataSetProperty (
        DataSetProperty(..), mkDataSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-dataset.html>
    DataSetProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-dataset.html#cfn-apptest-testcase-dataset-ccsid>
                     ccsid :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-dataset.html#cfn-apptest-testcase-dataset-format>
                     format :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-dataset.html#cfn-apptest-testcase-dataset-length>
                     length :: (Value Prelude.Double),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-dataset.html#cfn-apptest-testcase-dataset-name>
                     name :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-dataset.html#cfn-apptest-testcase-dataset-type>
                     type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSetProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double
        -> Value Prelude.Text -> Value Prelude.Text -> DataSetProperty
mkDataSetProperty ccsid format length name type'
  = DataSetProperty
      {haddock_workaround_ = (), ccsid = ccsid, format = format,
       length = length, name = name, type' = type'}
instance ToResourceProperties DataSetProperty where
  toResourceProperties DataSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.DataSet",
         supportsTags = Prelude.False,
         properties = ["Ccsid" JSON..= ccsid, "Format" JSON..= format,
                       "Length" JSON..= length, "Name" JSON..= name,
                       "Type" JSON..= type']}
instance JSON.ToJSON DataSetProperty where
  toJSON DataSetProperty {..}
    = JSON.object
        ["Ccsid" JSON..= ccsid, "Format" JSON..= format,
         "Length" JSON..= length, "Name" JSON..= name, "Type" JSON..= type']
instance Property "Ccsid" DataSetProperty where
  type PropertyType "Ccsid" DataSetProperty = Value Prelude.Text
  set newValue DataSetProperty {..}
    = DataSetProperty {ccsid = newValue, ..}
instance Property "Format" DataSetProperty where
  type PropertyType "Format" DataSetProperty = Value Prelude.Text
  set newValue DataSetProperty {..}
    = DataSetProperty {format = newValue, ..}
instance Property "Length" DataSetProperty where
  type PropertyType "Length" DataSetProperty = Value Prelude.Double
  set newValue DataSetProperty {..}
    = DataSetProperty {length = newValue, ..}
instance Property "Name" DataSetProperty where
  type PropertyType "Name" DataSetProperty = Value Prelude.Text
  set newValue DataSetProperty {..}
    = DataSetProperty {name = newValue, ..}
instance Property "Type" DataSetProperty where
  type PropertyType "Type" DataSetProperty = Value Prelude.Text
  set newValue DataSetProperty {..}
    = DataSetProperty {type' = newValue, ..}