module Stratosphere.QuickSight.DataSource.StarburstParametersProperty (
        module Exports, StarburstParametersProperty(..),
        mkStarburstParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.OAuthParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StarburstParametersProperty
  = StarburstParametersProperty {authenticationType :: (Prelude.Maybe (Value Prelude.Text)),
                                 catalog :: (Value Prelude.Text),
                                 databaseAccessControlRole :: (Prelude.Maybe (Value Prelude.Text)),
                                 host :: (Value Prelude.Text),
                                 oAuthParameters :: (Prelude.Maybe OAuthParametersProperty),
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
       authenticationType = Prelude.Nothing,
       databaseAccessControlRole = Prelude.Nothing,
       oAuthParameters = Prelude.Nothing, productType = Prelude.Nothing}
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
                              [(JSON..=) "AuthenticationType" Prelude.<$> authenticationType,
                               (JSON..=) "DatabaseAccessControlRole"
                                 Prelude.<$> databaseAccessControlRole,
                               (JSON..=) "OAuthParameters" Prelude.<$> oAuthParameters,
                               (JSON..=) "ProductType" Prelude.<$> productType]))}
instance JSON.ToJSON StarburstParametersProperty where
  toJSON StarburstParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Catalog" JSON..= catalog, "Host" JSON..= host,
               "Port" JSON..= port]
              (Prelude.catMaybes
                 [(JSON..=) "AuthenticationType" Prelude.<$> authenticationType,
                  (JSON..=) "DatabaseAccessControlRole"
                    Prelude.<$> databaseAccessControlRole,
                  (JSON..=) "OAuthParameters" Prelude.<$> oAuthParameters,
                  (JSON..=) "ProductType" Prelude.<$> productType])))
instance Property "AuthenticationType" StarburstParametersProperty where
  type PropertyType "AuthenticationType" StarburstParametersProperty = Value Prelude.Text
  set newValue StarburstParametersProperty {..}
    = StarburstParametersProperty
        {authenticationType = Prelude.pure newValue, ..}
instance Property "Catalog" StarburstParametersProperty where
  type PropertyType "Catalog" StarburstParametersProperty = Value Prelude.Text
  set newValue StarburstParametersProperty {..}
    = StarburstParametersProperty {catalog = newValue, ..}
instance Property "DatabaseAccessControlRole" StarburstParametersProperty where
  type PropertyType "DatabaseAccessControlRole" StarburstParametersProperty = Value Prelude.Text
  set newValue StarburstParametersProperty {..}
    = StarburstParametersProperty
        {databaseAccessControlRole = Prelude.pure newValue, ..}
instance Property "Host" StarburstParametersProperty where
  type PropertyType "Host" StarburstParametersProperty = Value Prelude.Text
  set newValue StarburstParametersProperty {..}
    = StarburstParametersProperty {host = newValue, ..}
instance Property "OAuthParameters" StarburstParametersProperty where
  type PropertyType "OAuthParameters" StarburstParametersProperty = OAuthParametersProperty
  set newValue StarburstParametersProperty {..}
    = StarburstParametersProperty
        {oAuthParameters = Prelude.pure newValue, ..}
instance Property "Port" StarburstParametersProperty where
  type PropertyType "Port" StarburstParametersProperty = Value Prelude.Double
  set newValue StarburstParametersProperty {..}
    = StarburstParametersProperty {port = newValue, ..}
instance Property "ProductType" StarburstParametersProperty where
  type PropertyType "ProductType" StarburstParametersProperty = Value Prelude.Text
  set newValue StarburstParametersProperty {..}
    = StarburstParametersProperty
        {productType = Prelude.pure newValue, ..}