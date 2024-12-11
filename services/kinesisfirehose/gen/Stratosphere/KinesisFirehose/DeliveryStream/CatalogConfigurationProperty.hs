module Stratosphere.KinesisFirehose.DeliveryStream.CatalogConfigurationProperty (
        CatalogConfigurationProperty(..), mkCatalogConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CatalogConfigurationProperty
  = CatalogConfigurationProperty {catalogArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCatalogConfigurationProperty :: CatalogConfigurationProperty
mkCatalogConfigurationProperty
  = CatalogConfigurationProperty {catalogArn = Prelude.Nothing}
instance ToResourceProperties CatalogConfigurationProperty where
  toResourceProperties CatalogConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.CatalogConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CatalogArn" Prelude.<$> catalogArn])}
instance JSON.ToJSON CatalogConfigurationProperty where
  toJSON CatalogConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CatalogArn" Prelude.<$> catalogArn]))
instance Property "CatalogArn" CatalogConfigurationProperty where
  type PropertyType "CatalogArn" CatalogConfigurationProperty = Value Prelude.Text
  set newValue CatalogConfigurationProperty {}
    = CatalogConfigurationProperty
        {catalogArn = Prelude.pure newValue, ..}