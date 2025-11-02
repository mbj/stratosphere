module Stratosphere.AppSync.DomainName (
        DomainName(..), mkDomainName
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DomainName
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-domainname.html>
    DomainName {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-domainname.html#cfn-appsync-domainname-certificatearn>
                certificateArn :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-domainname.html#cfn-appsync-domainname-description>
                description :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-domainname.html#cfn-appsync-domainname-domainname>
                domainName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainName ::
  Value Prelude.Text -> Value Prelude.Text -> DomainName
mkDomainName certificateArn domainName
  = DomainName
      {haddock_workaround_ = (), certificateArn = certificateArn,
       domainName = domainName, description = Prelude.Nothing}
instance ToResourceProperties DomainName where
  toResourceProperties DomainName {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::DomainName",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CertificateArn" JSON..= certificateArn,
                            "DomainName" JSON..= domainName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON DomainName where
  toJSON DomainName {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CertificateArn" JSON..= certificateArn,
               "DomainName" JSON..= domainName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "CertificateArn" DomainName where
  type PropertyType "CertificateArn" DomainName = Value Prelude.Text
  set newValue DomainName {..}
    = DomainName {certificateArn = newValue, ..}
instance Property "Description" DomainName where
  type PropertyType "Description" DomainName = Value Prelude.Text
  set newValue DomainName {..}
    = DomainName {description = Prelude.pure newValue, ..}
instance Property "DomainName" DomainName where
  type PropertyType "DomainName" DomainName = Value Prelude.Text
  set newValue DomainName {..}
    = DomainName {domainName = newValue, ..}