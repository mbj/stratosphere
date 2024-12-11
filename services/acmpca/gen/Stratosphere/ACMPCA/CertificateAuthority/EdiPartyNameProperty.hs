module Stratosphere.ACMPCA.CertificateAuthority.EdiPartyNameProperty (
        EdiPartyNameProperty(..), mkEdiPartyNameProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EdiPartyNameProperty
  = EdiPartyNameProperty {nameAssigner :: (Prelude.Maybe (Value Prelude.Text)),
                          partyName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEdiPartyNameProperty ::
  Value Prelude.Text -> EdiPartyNameProperty
mkEdiPartyNameProperty partyName
  = EdiPartyNameProperty
      {partyName = partyName, nameAssigner = Prelude.Nothing}
instance ToResourceProperties EdiPartyNameProperty where
  toResourceProperties EdiPartyNameProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::CertificateAuthority.EdiPartyName",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PartyName" JSON..= partyName]
                           (Prelude.catMaybes
                              [(JSON..=) "NameAssigner" Prelude.<$> nameAssigner]))}
instance JSON.ToJSON EdiPartyNameProperty where
  toJSON EdiPartyNameProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PartyName" JSON..= partyName]
              (Prelude.catMaybes
                 [(JSON..=) "NameAssigner" Prelude.<$> nameAssigner])))
instance Property "NameAssigner" EdiPartyNameProperty where
  type PropertyType "NameAssigner" EdiPartyNameProperty = Value Prelude.Text
  set newValue EdiPartyNameProperty {..}
    = EdiPartyNameProperty {nameAssigner = Prelude.pure newValue, ..}
instance Property "PartyName" EdiPartyNameProperty where
  type PropertyType "PartyName" EdiPartyNameProperty = Value Prelude.Text
  set newValue EdiPartyNameProperty {..}
    = EdiPartyNameProperty {partyName = newValue, ..}