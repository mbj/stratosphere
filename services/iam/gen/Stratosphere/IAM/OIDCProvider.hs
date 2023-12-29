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
  = OIDCProvider {clientIdList :: (Prelude.Maybe (ValueList Prelude.Text)),
                  tags :: (Prelude.Maybe [Tag]),
                  thumbprintList :: (ValueList Prelude.Text),
                  url :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOIDCProvider :: ValueList Prelude.Text -> OIDCProvider
mkOIDCProvider thumbprintList
  = OIDCProvider
      {thumbprintList = thumbprintList, clientIdList = Prelude.Nothing,
       tags = Prelude.Nothing, url = Prelude.Nothing}
instance ToResourceProperties OIDCProvider where
  toResourceProperties OIDCProvider {..}
    = ResourceProperties
        {awsType = "AWS::IAM::OIDCProvider", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ThumbprintList" JSON..= thumbprintList]
                           (Prelude.catMaybes
                              [(JSON..=) "ClientIdList" Prelude.<$> clientIdList,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Url" Prelude.<$> url]))}
instance JSON.ToJSON OIDCProvider where
  toJSON OIDCProvider {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ThumbprintList" JSON..= thumbprintList]
              (Prelude.catMaybes
                 [(JSON..=) "ClientIdList" Prelude.<$> clientIdList,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Url" Prelude.<$> url])))
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
    = OIDCProvider {thumbprintList = newValue, ..}
instance Property "Url" OIDCProvider where
  type PropertyType "Url" OIDCProvider = Value Prelude.Text
  set newValue OIDCProvider {..}
    = OIDCProvider {url = Prelude.pure newValue, ..}