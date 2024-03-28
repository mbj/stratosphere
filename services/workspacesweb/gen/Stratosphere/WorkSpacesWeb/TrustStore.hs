module Stratosphere.WorkSpacesWeb.TrustStore (
        TrustStore(..), mkTrustStore
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TrustStore
  = TrustStore {certificateList :: (ValueList Prelude.Text),
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrustStore :: ValueList Prelude.Text -> TrustStore
mkTrustStore certificateList
  = TrustStore
      {certificateList = certificateList, tags = Prelude.Nothing}
instance ToResourceProperties TrustStore where
  toResourceProperties TrustStore {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesWeb::TrustStore",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CertificateList" JSON..= certificateList]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON TrustStore where
  toJSON TrustStore {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CertificateList" JSON..= certificateList]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CertificateList" TrustStore where
  type PropertyType "CertificateList" TrustStore = ValueList Prelude.Text
  set newValue TrustStore {..}
    = TrustStore {certificateList = newValue, ..}
instance Property "Tags" TrustStore where
  type PropertyType "Tags" TrustStore = [Tag]
  set newValue TrustStore {..}
    = TrustStore {tags = Prelude.pure newValue, ..}