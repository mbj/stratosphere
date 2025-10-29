module Stratosphere.Location.PlaceIndex.DataSourceConfigurationProperty (
        DataSourceConfigurationProperty(..),
        mkDataSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSourceConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-location-placeindex-datasourceconfiguration.html>
    DataSourceConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-location-placeindex-datasourceconfiguration.html#cfn-location-placeindex-datasourceconfiguration-intendeduse>
                                     intendedUse :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSourceConfigurationProperty ::
  DataSourceConfigurationProperty
mkDataSourceConfigurationProperty
  = DataSourceConfigurationProperty {intendedUse = Prelude.Nothing}
instance ToResourceProperties DataSourceConfigurationProperty where
  toResourceProperties DataSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Location::PlaceIndex.DataSourceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IntendedUse" Prelude.<$> intendedUse])}
instance JSON.ToJSON DataSourceConfigurationProperty where
  toJSON DataSourceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IntendedUse" Prelude.<$> intendedUse]))
instance Property "IntendedUse" DataSourceConfigurationProperty where
  type PropertyType "IntendedUse" DataSourceConfigurationProperty = Value Prelude.Text
  set newValue DataSourceConfigurationProperty {}
    = DataSourceConfigurationProperty
        {intendedUse = Prelude.pure newValue, ..}