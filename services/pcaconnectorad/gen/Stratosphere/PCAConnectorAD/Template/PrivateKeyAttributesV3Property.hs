module Stratosphere.PCAConnectorAD.Template.PrivateKeyAttributesV3Property (
        module Exports, PrivateKeyAttributesV3Property(..),
        mkPrivateKeyAttributesV3Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.KeyUsagePropertyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrivateKeyAttributesV3Property
  = PrivateKeyAttributesV3Property {algorithm :: (Value Prelude.Text),
                                    cryptoProviders :: (Prelude.Maybe (ValueList Prelude.Text)),
                                    keySpec :: (Value Prelude.Text),
                                    keyUsageProperty :: KeyUsagePropertyProperty,
                                    minimalKeyLength :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrivateKeyAttributesV3Property ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> KeyUsagePropertyProperty
        -> Value Prelude.Double -> PrivateKeyAttributesV3Property
mkPrivateKeyAttributesV3Property
  algorithm
  keySpec
  keyUsageProperty
  minimalKeyLength
  = PrivateKeyAttributesV3Property
      {algorithm = algorithm, keySpec = keySpec,
       keyUsageProperty = keyUsageProperty,
       minimalKeyLength = minimalKeyLength,
       cryptoProviders = Prelude.Nothing}
instance ToResourceProperties PrivateKeyAttributesV3Property where
  toResourceProperties PrivateKeyAttributesV3Property {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.PrivateKeyAttributesV3",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Algorithm" JSON..= algorithm, "KeySpec" JSON..= keySpec,
                            "KeyUsageProperty" JSON..= keyUsageProperty,
                            "MinimalKeyLength" JSON..= minimalKeyLength]
                           (Prelude.catMaybes
                              [(JSON..=) "CryptoProviders" Prelude.<$> cryptoProviders]))}
instance JSON.ToJSON PrivateKeyAttributesV3Property where
  toJSON PrivateKeyAttributesV3Property {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Algorithm" JSON..= algorithm, "KeySpec" JSON..= keySpec,
               "KeyUsageProperty" JSON..= keyUsageProperty,
               "MinimalKeyLength" JSON..= minimalKeyLength]
              (Prelude.catMaybes
                 [(JSON..=) "CryptoProviders" Prelude.<$> cryptoProviders])))
instance Property "Algorithm" PrivateKeyAttributesV3Property where
  type PropertyType "Algorithm" PrivateKeyAttributesV3Property = Value Prelude.Text
  set newValue PrivateKeyAttributesV3Property {..}
    = PrivateKeyAttributesV3Property {algorithm = newValue, ..}
instance Property "CryptoProviders" PrivateKeyAttributesV3Property where
  type PropertyType "CryptoProviders" PrivateKeyAttributesV3Property = ValueList Prelude.Text
  set newValue PrivateKeyAttributesV3Property {..}
    = PrivateKeyAttributesV3Property
        {cryptoProviders = Prelude.pure newValue, ..}
instance Property "KeySpec" PrivateKeyAttributesV3Property where
  type PropertyType "KeySpec" PrivateKeyAttributesV3Property = Value Prelude.Text
  set newValue PrivateKeyAttributesV3Property {..}
    = PrivateKeyAttributesV3Property {keySpec = newValue, ..}
instance Property "KeyUsageProperty" PrivateKeyAttributesV3Property where
  type PropertyType "KeyUsageProperty" PrivateKeyAttributesV3Property = KeyUsagePropertyProperty
  set newValue PrivateKeyAttributesV3Property {..}
    = PrivateKeyAttributesV3Property {keyUsageProperty = newValue, ..}
instance Property "MinimalKeyLength" PrivateKeyAttributesV3Property where
  type PropertyType "MinimalKeyLength" PrivateKeyAttributesV3Property = Value Prelude.Double
  set newValue PrivateKeyAttributesV3Property {..}
    = PrivateKeyAttributesV3Property {minimalKeyLength = newValue, ..}