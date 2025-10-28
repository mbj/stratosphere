module Stratosphere.PCAConnectorAD.Template.PrivateKeyAttributesV4Property (
        module Exports, PrivateKeyAttributesV4Property(..),
        mkPrivateKeyAttributesV4Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.KeyUsagePropertyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrivateKeyAttributesV4Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyattributesv4.html>
    PrivateKeyAttributesV4Property {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyattributesv4.html#cfn-pcaconnectorad-template-privatekeyattributesv4-algorithm>
                                    algorithm :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyattributesv4.html#cfn-pcaconnectorad-template-privatekeyattributesv4-cryptoproviders>
                                    cryptoProviders :: (Prelude.Maybe (ValueList Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyattributesv4.html#cfn-pcaconnectorad-template-privatekeyattributesv4-keyspec>
                                    keySpec :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyattributesv4.html#cfn-pcaconnectorad-template-privatekeyattributesv4-keyusageproperty>
                                    keyUsageProperty :: (Prelude.Maybe KeyUsagePropertyProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyattributesv4.html#cfn-pcaconnectorad-template-privatekeyattributesv4-minimalkeylength>
                                    minimalKeyLength :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrivateKeyAttributesV4Property ::
  Value Prelude.Text
  -> Value Prelude.Double -> PrivateKeyAttributesV4Property
mkPrivateKeyAttributesV4Property keySpec minimalKeyLength
  = PrivateKeyAttributesV4Property
      {haddock_workaround_ = (), keySpec = keySpec,
       minimalKeyLength = minimalKeyLength, algorithm = Prelude.Nothing,
       cryptoProviders = Prelude.Nothing,
       keyUsageProperty = Prelude.Nothing}
instance ToResourceProperties PrivateKeyAttributesV4Property where
  toResourceProperties PrivateKeyAttributesV4Property {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.PrivateKeyAttributesV4",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KeySpec" JSON..= keySpec,
                            "MinimalKeyLength" JSON..= minimalKeyLength]
                           (Prelude.catMaybes
                              [(JSON..=) "Algorithm" Prelude.<$> algorithm,
                               (JSON..=) "CryptoProviders" Prelude.<$> cryptoProviders,
                               (JSON..=) "KeyUsageProperty" Prelude.<$> keyUsageProperty]))}
instance JSON.ToJSON PrivateKeyAttributesV4Property where
  toJSON PrivateKeyAttributesV4Property {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KeySpec" JSON..= keySpec,
               "MinimalKeyLength" JSON..= minimalKeyLength]
              (Prelude.catMaybes
                 [(JSON..=) "Algorithm" Prelude.<$> algorithm,
                  (JSON..=) "CryptoProviders" Prelude.<$> cryptoProviders,
                  (JSON..=) "KeyUsageProperty" Prelude.<$> keyUsageProperty])))
instance Property "Algorithm" PrivateKeyAttributesV4Property where
  type PropertyType "Algorithm" PrivateKeyAttributesV4Property = Value Prelude.Text
  set newValue PrivateKeyAttributesV4Property {..}
    = PrivateKeyAttributesV4Property
        {algorithm = Prelude.pure newValue, ..}
instance Property "CryptoProviders" PrivateKeyAttributesV4Property where
  type PropertyType "CryptoProviders" PrivateKeyAttributesV4Property = ValueList Prelude.Text
  set newValue PrivateKeyAttributesV4Property {..}
    = PrivateKeyAttributesV4Property
        {cryptoProviders = Prelude.pure newValue, ..}
instance Property "KeySpec" PrivateKeyAttributesV4Property where
  type PropertyType "KeySpec" PrivateKeyAttributesV4Property = Value Prelude.Text
  set newValue PrivateKeyAttributesV4Property {..}
    = PrivateKeyAttributesV4Property {keySpec = newValue, ..}
instance Property "KeyUsageProperty" PrivateKeyAttributesV4Property where
  type PropertyType "KeyUsageProperty" PrivateKeyAttributesV4Property = KeyUsagePropertyProperty
  set newValue PrivateKeyAttributesV4Property {..}
    = PrivateKeyAttributesV4Property
        {keyUsageProperty = Prelude.pure newValue, ..}
instance Property "MinimalKeyLength" PrivateKeyAttributesV4Property where
  type PropertyType "MinimalKeyLength" PrivateKeyAttributesV4Property = Value Prelude.Double
  set newValue PrivateKeyAttributesV4Property {..}
    = PrivateKeyAttributesV4Property {minimalKeyLength = newValue, ..}