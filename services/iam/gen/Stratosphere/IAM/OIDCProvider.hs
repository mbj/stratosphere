module Stratosphere.IAM.OIDCProvider (
        OIDCProvider(..), mkOIDCProvider
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data OIDCProvider
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-oidcprovider.html>
    OIDCProvider {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-oidcprovider.html#cfn-iam-oidcprovider-clientidlist>
                  clientIdList :: (Prelude.Maybe (ValueList Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-oidcprovider.html#cfn-iam-oidcprovider-tags>
                  tags :: (Prelude.Maybe [Tag]),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-oidcprovider.html#cfn-iam-oidcprovider-thumbprintlist>
                  thumbprintList :: (Prelude.Maybe (ValueList Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-oidcprovider.html#cfn-iam-oidcprovider-url>
                  url :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOIDCProvider :: OIDCProvider
mkOIDCProvider
  = OIDCProvider
      {haddock_workaround_ = (), clientIdList = Prelude.Nothing,
       tags = Prelude.Nothing, thumbprintList = Prelude.Nothing,
       url = Prelude.Nothing}
instance ToResourceProperties OIDCProvider where
  toResourceProperties OIDCProvider {..}
    = ResourceProperties
        {awsType = "AWS::IAM::OIDCProvider", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClientIdList" Prelude.<$> clientIdList,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "ThumbprintList" Prelude.<$> thumbprintList,
                            (JSON..=) "Url" Prelude.<$> url])}
instance JSON.ToJSON OIDCProvider where
  toJSON OIDCProvider {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClientIdList" Prelude.<$> clientIdList,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "ThumbprintList" Prelude.<$> thumbprintList,
               (JSON..=) "Url" Prelude.<$> url]))
instance Property "ClientIdList" OIDCProvider where
  type PropertyType "ClientIdList" OIDCProvider = ValueList Prelude.Text
  set newValue OIDCProvider {..}
    = OIDCProvider {clientIdList = Prelude.pure newValue, ..}
instance Property "Tags" OIDCProvider where
  type PropertyType "Tags" OIDCProvider = [Tag]
  set newValue OIDCProvider {..}
    = OIDCProvider {tags = Prelude.pure newValue, ..}
instance Property "ThumbprintList" OIDCProvider where
  type PropertyType "ThumbprintList" OIDCProvider = ValueList Prelude.Text
  set newValue OIDCProvider {..}
    = OIDCProvider {thumbprintList = Prelude.pure newValue, ..}
instance Property "Url" OIDCProvider where
  type PropertyType "Url" OIDCProvider = Value Prelude.Text
  set newValue OIDCProvider {..}
    = OIDCProvider {url = Prelude.pure newValue, ..}