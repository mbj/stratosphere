module Stratosphere.Kendra.DataSource.SqlConfigurationProperty (
        SqlConfigurationProperty(..), mkSqlConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SqlConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-sqlconfiguration.html>
    SqlConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-sqlconfiguration.html#cfn-kendra-datasource-sqlconfiguration-queryidentifiersenclosingoption>
                              queryIdentifiersEnclosingOption :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSqlConfigurationProperty :: SqlConfigurationProperty
mkSqlConfigurationProperty
  = SqlConfigurationProperty
      {haddock_workaround_ = (),
       queryIdentifiersEnclosingOption = Prelude.Nothing}
instance ToResourceProperties SqlConfigurationProperty where
  toResourceProperties SqlConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.SqlConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "QueryIdentifiersEnclosingOption"
                              Prelude.<$> queryIdentifiersEnclosingOption])}
instance JSON.ToJSON SqlConfigurationProperty where
  toJSON SqlConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "QueryIdentifiersEnclosingOption"
                 Prelude.<$> queryIdentifiersEnclosingOption]))
instance Property "QueryIdentifiersEnclosingOption" SqlConfigurationProperty where
  type PropertyType "QueryIdentifiersEnclosingOption" SqlConfigurationProperty = Value Prelude.Text
  set newValue SqlConfigurationProperty {..}
    = SqlConfigurationProperty
        {queryIdentifiersEnclosingOption = Prelude.pure newValue, ..}