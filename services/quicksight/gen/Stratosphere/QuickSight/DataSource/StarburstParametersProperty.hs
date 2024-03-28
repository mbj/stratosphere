module Stratosphere.QuickSight.DataSource.StarburstParametersProperty (
        StarburstParametersProperty(..), mkStarburstParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StarburstParametersProperty
  = StarburstParametersProperty {catalog :: (Value Prelude.Text),
                                 host :: (Value Prelude.Text),
                                 port :: (Value Prelude.Double),
                                 productType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStarburstParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> StarburstParametersProperty
mkStarburstParametersProperty catalog host port
  = StarburstParametersProperty
      {catalog = catalog, host = host, port = port,
       productType = Prelude.Nothing}
instance ToResourceProperties StarburstParametersProperty where
  toResourceProperties StarburstParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.StarburstParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Catalog" JSON..= catalog, "Host" JSON..= host,
                            "Port" JSON..= port]
                           (Prelude.catMaybes
                              [(JSON..=) "ProductType" Prelude.<$> productType]))}
instance JSON.ToJSON StarburstParametersProperty where
  toJSON StarburstParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Catalog" JSON..= catalog, "Host" JSON..= host,
               "Port" JSON..= port]
              (Prelude.catMaybes
                 [(JSON..=) "ProductType" Prelude.<$> productType])))
instance Property "Catalog" StarburstParametersProperty where
  type PropertyType "Catalog" StarburstParametersProperty = Value Prelude.Text
  set newValue StarburstParametersProperty {..}
    = StarburstParametersProperty {catalog = newValue, ..}
instance Property "Host" StarburstParametersProperty where
  type PropertyType "Host" StarburstParametersProperty = Value Prelude.Text
  set newValue StarburstParametersProperty {..}
    = StarburstParametersProperty {host = newValue, ..}
instance Property "Port" StarburstParametersProperty where
  type PropertyType "Port" StarburstParametersProperty = Value Prelude.Double
  set newValue StarburstParametersProperty {..}
    = StarburstParametersProperty {port = newValue, ..}
instance Property "ProductType" StarburstParametersProperty where
  type PropertyType "ProductType" StarburstParametersProperty = Value Prelude.Text
  set newValue StarburstParametersProperty {..}
    = StarburstParametersProperty
        {productType = Prelude.pure newValue, ..}