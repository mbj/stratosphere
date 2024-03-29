module Stratosphere.AppStream.ImageBuilder.DomainJoinInfoProperty (
        DomainJoinInfoProperty(..), mkDomainJoinInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DomainJoinInfoProperty
  = DomainJoinInfoProperty {directoryName :: (Prelude.Maybe (Value Prelude.Text)),
                            organizationalUnitDistinguishedName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainJoinInfoProperty :: DomainJoinInfoProperty
mkDomainJoinInfoProperty
  = DomainJoinInfoProperty
      {directoryName = Prelude.Nothing,
       organizationalUnitDistinguishedName = Prelude.Nothing}
instance ToResourceProperties DomainJoinInfoProperty where
  toResourceProperties DomainJoinInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::ImageBuilder.DomainJoinInfo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DirectoryName" Prelude.<$> directoryName,
                            (JSON..=) "OrganizationalUnitDistinguishedName"
                              Prelude.<$> organizationalUnitDistinguishedName])}
instance JSON.ToJSON DomainJoinInfoProperty where
  toJSON DomainJoinInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DirectoryName" Prelude.<$> directoryName,
               (JSON..=) "OrganizationalUnitDistinguishedName"
                 Prelude.<$> organizationalUnitDistinguishedName]))
instance Property "DirectoryName" DomainJoinInfoProperty where
  type PropertyType "DirectoryName" DomainJoinInfoProperty = Value Prelude.Text
  set newValue DomainJoinInfoProperty {..}
    = DomainJoinInfoProperty
        {directoryName = Prelude.pure newValue, ..}
instance Property "OrganizationalUnitDistinguishedName" DomainJoinInfoProperty where
  type PropertyType "OrganizationalUnitDistinguishedName" DomainJoinInfoProperty = Value Prelude.Text
  set newValue DomainJoinInfoProperty {..}
    = DomainJoinInfoProperty
        {organizationalUnitDistinguishedName = Prelude.pure newValue, ..}