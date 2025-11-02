module Stratosphere.BCMDataExports.Export.DataQueryProperty (
        DataQueryProperty(..), mkDataQueryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataQueryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-dataquery.html>
    DataQueryProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-dataquery.html#cfn-bcmdataexports-export-dataquery-querystatement>
                       queryStatement :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-dataquery.html#cfn-bcmdataexports-export-dataquery-tableconfigurations>
                       tableConfigurations :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataQueryProperty :: Value Prelude.Text -> DataQueryProperty
mkDataQueryProperty queryStatement
  = DataQueryProperty
      {haddock_workaround_ = (), queryStatement = queryStatement,
       tableConfigurations = Prelude.Nothing}
instance ToResourceProperties DataQueryProperty where
  toResourceProperties DataQueryProperty {..}
    = ResourceProperties
        {awsType = "AWS::BCMDataExports::Export.DataQuery",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["QueryStatement" JSON..= queryStatement]
                           (Prelude.catMaybes
                              [(JSON..=) "TableConfigurations"
                                 Prelude.<$> tableConfigurations]))}
instance JSON.ToJSON DataQueryProperty where
  toJSON DataQueryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["QueryStatement" JSON..= queryStatement]
              (Prelude.catMaybes
                 [(JSON..=) "TableConfigurations"
                    Prelude.<$> tableConfigurations])))
instance Property "QueryStatement" DataQueryProperty where
  type PropertyType "QueryStatement" DataQueryProperty = Value Prelude.Text
  set newValue DataQueryProperty {..}
    = DataQueryProperty {queryStatement = newValue, ..}
instance Property "TableConfigurations" DataQueryProperty where
  type PropertyType "TableConfigurations" DataQueryProperty = JSON.Object
  set newValue DataQueryProperty {..}
    = DataQueryProperty
        {tableConfigurations = Prelude.pure newValue, ..}