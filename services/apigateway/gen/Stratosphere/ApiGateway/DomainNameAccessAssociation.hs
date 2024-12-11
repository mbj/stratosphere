module Stratosphere.ApiGateway.DomainNameAccessAssociation (
        DomainNameAccessAssociation(..), mkDomainNameAccessAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DomainNameAccessAssociation
  = DomainNameAccessAssociation {accessAssociationSource :: (Value Prelude.Text),
                                 accessAssociationSourceType :: (Value Prelude.Text),
                                 domainNameArn :: (Value Prelude.Text),
                                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainNameAccessAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> DomainNameAccessAssociation
mkDomainNameAccessAssociation
  accessAssociationSource
  accessAssociationSourceType
  domainNameArn
  = DomainNameAccessAssociation
      {accessAssociationSource = accessAssociationSource,
       accessAssociationSourceType = accessAssociationSourceType,
       domainNameArn = domainNameArn, tags = Prelude.Nothing}
instance ToResourceProperties DomainNameAccessAssociation where
  toResourceProperties DomainNameAccessAssociation {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::DomainNameAccessAssociation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccessAssociationSource" JSON..= accessAssociationSource,
                            "AccessAssociationSourceType" JSON..= accessAssociationSourceType,
                            "DomainNameArn" JSON..= domainNameArn]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DomainNameAccessAssociation where
  toJSON DomainNameAccessAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccessAssociationSource" JSON..= accessAssociationSource,
               "AccessAssociationSourceType" JSON..= accessAssociationSourceType,
               "DomainNameArn" JSON..= domainNameArn]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessAssociationSource" DomainNameAccessAssociation where
  type PropertyType "AccessAssociationSource" DomainNameAccessAssociation = Value Prelude.Text
  set newValue DomainNameAccessAssociation {..}
    = DomainNameAccessAssociation
        {accessAssociationSource = newValue, ..}
instance Property "AccessAssociationSourceType" DomainNameAccessAssociation where
  type PropertyType "AccessAssociationSourceType" DomainNameAccessAssociation = Value Prelude.Text
  set newValue DomainNameAccessAssociation {..}
    = DomainNameAccessAssociation
        {accessAssociationSourceType = newValue, ..}
instance Property "DomainNameArn" DomainNameAccessAssociation where
  type PropertyType "DomainNameArn" DomainNameAccessAssociation = Value Prelude.Text
  set newValue DomainNameAccessAssociation {..}
    = DomainNameAccessAssociation {domainNameArn = newValue, ..}
instance Property "Tags" DomainNameAccessAssociation where
  type PropertyType "Tags" DomainNameAccessAssociation = [Tag]
  set newValue DomainNameAccessAssociation {..}
    = DomainNameAccessAssociation {tags = Prelude.pure newValue, ..}