module Stratosphere.PCAConnectorAD.Template.PrivateKeyAttributesV2Property (
        PrivateKeyAttributesV2Property(..),
        mkPrivateKeyAttributesV2Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrivateKeyAttributesV2Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyattributesv2.html>
    PrivateKeyAttributesV2Property {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyattributesv2.html#cfn-pcaconnectorad-template-privatekeyattributesv2-cryptoproviders>
                                    cryptoProviders :: (Prelude.Maybe (ValueList Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyattributesv2.html#cfn-pcaconnectorad-template-privatekeyattributesv2-keyspec>
                                    keySpec :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyattributesv2.html#cfn-pcaconnectorad-template-privatekeyattributesv2-minimalkeylength>
                                    minimalKeyLength :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrivateKeyAttributesV2Property ::
  Value Prelude.Text
  -> Value Prelude.Double -> PrivateKeyAttributesV2Property
mkPrivateKeyAttributesV2Property keySpec minimalKeyLength
  = PrivateKeyAttributesV2Property
      {haddock_workaround_ = (), keySpec = keySpec,
       minimalKeyLength = minimalKeyLength,
       cryptoProviders = Prelude.Nothing}
instance ToResourceProperties PrivateKeyAttributesV2Property where
  toResourceProperties PrivateKeyAttributesV2Property {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.PrivateKeyAttributesV2",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KeySpec" JSON..= keySpec,
                            "MinimalKeyLength" JSON..= minimalKeyLength]
                           (Prelude.catMaybes
                              [(JSON..=) "CryptoProviders" Prelude.<$> cryptoProviders]))}
instance JSON.ToJSON PrivateKeyAttributesV2Property where
  toJSON PrivateKeyAttributesV2Property {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KeySpec" JSON..= keySpec,
               "MinimalKeyLength" JSON..= minimalKeyLength]
              (Prelude.catMaybes
                 [(JSON..=) "CryptoProviders" Prelude.<$> cryptoProviders])))
instance Property "CryptoProviders" PrivateKeyAttributesV2Property where
  type PropertyType "CryptoProviders" PrivateKeyAttributesV2Property = ValueList Prelude.Text
  set newValue PrivateKeyAttributesV2Property {..}
    = PrivateKeyAttributesV2Property
        {cryptoProviders = Prelude.pure newValue, ..}
instance Property "KeySpec" PrivateKeyAttributesV2Property where
  type PropertyType "KeySpec" PrivateKeyAttributesV2Property = Value Prelude.Text
  set newValue PrivateKeyAttributesV2Property {..}
    = PrivateKeyAttributesV2Property {keySpec = newValue, ..}
instance Property "MinimalKeyLength" PrivateKeyAttributesV2Property where
  type PropertyType "MinimalKeyLength" PrivateKeyAttributesV2Property = Value Prelude.Double
  set newValue PrivateKeyAttributesV2Property {..}
    = PrivateKeyAttributesV2Property {minimalKeyLength = newValue, ..}