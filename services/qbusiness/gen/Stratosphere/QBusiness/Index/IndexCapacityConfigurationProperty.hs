module Stratosphere.QBusiness.Index.IndexCapacityConfigurationProperty (
        IndexCapacityConfigurationProperty(..),
        mkIndexCapacityConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IndexCapacityConfigurationProperty
  = IndexCapacityConfigurationProperty {units :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIndexCapacityConfigurationProperty ::
  IndexCapacityConfigurationProperty
mkIndexCapacityConfigurationProperty
  = IndexCapacityConfigurationProperty {units = Prelude.Nothing}
instance ToResourceProperties IndexCapacityConfigurationProperty where
  toResourceProperties IndexCapacityConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Index.IndexCapacityConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Units" Prelude.<$> units])}
instance JSON.ToJSON IndexCapacityConfigurationProperty where
  toJSON IndexCapacityConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Units" Prelude.<$> units]))
instance Property "Units" IndexCapacityConfigurationProperty where
  type PropertyType "Units" IndexCapacityConfigurationProperty = Value Prelude.Double
  set newValue IndexCapacityConfigurationProperty {}
    = IndexCapacityConfigurationProperty
        {units = Prelude.pure newValue, ..}