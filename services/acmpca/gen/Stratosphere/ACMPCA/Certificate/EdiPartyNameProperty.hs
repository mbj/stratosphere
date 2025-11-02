module Stratosphere.ACMPCA.Certificate.EdiPartyNameProperty (
        EdiPartyNameProperty(..), mkEdiPartyNameProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EdiPartyNameProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-edipartyname.html>
    EdiPartyNameProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-edipartyname.html#cfn-acmpca-certificate-edipartyname-nameassigner>
                          nameAssigner :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-edipartyname.html#cfn-acmpca-certificate-edipartyname-partyname>
                          partyName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEdiPartyNameProperty ::
  Value Prelude.Text -> Value Prelude.Text -> EdiPartyNameProperty
mkEdiPartyNameProperty nameAssigner partyName
  = EdiPartyNameProperty
      {haddock_workaround_ = (), nameAssigner = nameAssigner,
       partyName = partyName}
instance ToResourceProperties EdiPartyNameProperty where
  toResourceProperties EdiPartyNameProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::Certificate.EdiPartyName",
         supportsTags = Prelude.False,
         properties = ["NameAssigner" JSON..= nameAssigner,
                       "PartyName" JSON..= partyName]}
instance JSON.ToJSON EdiPartyNameProperty where
  toJSON EdiPartyNameProperty {..}
    = JSON.object
        ["NameAssigner" JSON..= nameAssigner,
         "PartyName" JSON..= partyName]
instance Property "NameAssigner" EdiPartyNameProperty where
  type PropertyType "NameAssigner" EdiPartyNameProperty = Value Prelude.Text
  set newValue EdiPartyNameProperty {..}
    = EdiPartyNameProperty {nameAssigner = newValue, ..}
instance Property "PartyName" EdiPartyNameProperty where
  type PropertyType "PartyName" EdiPartyNameProperty = Value Prelude.Text
  set newValue EdiPartyNameProperty {..}
    = EdiPartyNameProperty {partyName = newValue, ..}