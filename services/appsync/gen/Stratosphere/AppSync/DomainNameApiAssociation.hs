module Stratosphere.AppSync.DomainNameApiAssociation (
        DomainNameApiAssociation(..), mkDomainNameApiAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DomainNameApiAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-domainnameapiassociation.html>
    DomainNameApiAssociation {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-domainnameapiassociation.html#cfn-appsync-domainnameapiassociation-apiid>
                              apiId :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-domainnameapiassociation.html#cfn-appsync-domainnameapiassociation-domainname>
                              domainName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainNameApiAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> DomainNameApiAssociation
mkDomainNameApiAssociation apiId domainName
  = DomainNameApiAssociation
      {haddock_workaround_ = (), apiId = apiId, domainName = domainName}
instance ToResourceProperties DomainNameApiAssociation where
  toResourceProperties DomainNameApiAssociation {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::DomainNameApiAssociation",
         supportsTags = Prelude.False,
         properties = ["ApiId" JSON..= apiId,
                       "DomainName" JSON..= domainName]}
instance JSON.ToJSON DomainNameApiAssociation where
  toJSON DomainNameApiAssociation {..}
    = JSON.object
        ["ApiId" JSON..= apiId, "DomainName" JSON..= domainName]
instance Property "ApiId" DomainNameApiAssociation where
  type PropertyType "ApiId" DomainNameApiAssociation = Value Prelude.Text
  set newValue DomainNameApiAssociation {..}
    = DomainNameApiAssociation {apiId = newValue, ..}
instance Property "DomainName" DomainNameApiAssociation where
  type PropertyType "DomainName" DomainNameApiAssociation = Value Prelude.Text
  set newValue DomainNameApiAssociation {..}
    = DomainNameApiAssociation {domainName = newValue, ..}