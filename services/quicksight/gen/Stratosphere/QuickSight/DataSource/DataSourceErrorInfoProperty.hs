module Stratosphere.QuickSight.DataSource.DataSourceErrorInfoProperty (
        DataSourceErrorInfoProperty(..), mkDataSourceErrorInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSourceErrorInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceerrorinfo.html>
    DataSourceErrorInfoProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceerrorinfo.html#cfn-quicksight-datasource-datasourceerrorinfo-message>
                                 message :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceerrorinfo.html#cfn-quicksight-datasource-datasourceerrorinfo-type>
                                 type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSourceErrorInfoProperty :: DataSourceErrorInfoProperty
mkDataSourceErrorInfoProperty
  = DataSourceErrorInfoProperty
      {haddock_workaround_ = (), message = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties DataSourceErrorInfoProperty where
  toResourceProperties DataSourceErrorInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.DataSourceErrorInfo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Message" Prelude.<$> message,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON DataSourceErrorInfoProperty where
  toJSON DataSourceErrorInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Message" Prelude.<$> message,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Message" DataSourceErrorInfoProperty where
  type PropertyType "Message" DataSourceErrorInfoProperty = Value Prelude.Text
  set newValue DataSourceErrorInfoProperty {..}
    = DataSourceErrorInfoProperty {message = Prelude.pure newValue, ..}
instance Property "Type" DataSourceErrorInfoProperty where
  type PropertyType "Type" DataSourceErrorInfoProperty = Value Prelude.Text
  set newValue DataSourceErrorInfoProperty {..}
    = DataSourceErrorInfoProperty {type' = Prelude.pure newValue, ..}