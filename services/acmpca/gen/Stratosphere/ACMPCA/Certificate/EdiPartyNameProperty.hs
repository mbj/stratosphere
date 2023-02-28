module Stratosphere.ACMPCA.Certificate.EdiPartyNameProperty (
        EdiPartyNameProperty(..), mkEdiPartyNameProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EdiPartyNameProperty
  = EdiPartyNameProperty {nameAssigner :: (Value Prelude.Text),
                          partyName :: (Value Prelude.Text)}
mkEdiPartyNameProperty ::
  Value Prelude.Text -> Value Prelude.Text -> EdiPartyNameProperty
mkEdiPartyNameProperty nameAssigner partyName
  = EdiPartyNameProperty
      {nameAssigner = nameAssigner, partyName = partyName}
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