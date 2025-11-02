module Stratosphere.OpenSearchService.Domain.MasterUserOptionsProperty (
        MasterUserOptionsProperty(..), mkMasterUserOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MasterUserOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-masteruseroptions.html>
    MasterUserOptionsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-masteruseroptions.html#cfn-opensearchservice-domain-masteruseroptions-masteruserarn>
                               masterUserARN :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-masteruseroptions.html#cfn-opensearchservice-domain-masteruseroptions-masterusername>
                               masterUserName :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-masteruseroptions.html#cfn-opensearchservice-domain-masteruseroptions-masteruserpassword>
                               masterUserPassword :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMasterUserOptionsProperty :: MasterUserOptionsProperty
mkMasterUserOptionsProperty
  = MasterUserOptionsProperty
      {haddock_workaround_ = (), masterUserARN = Prelude.Nothing,
       masterUserName = Prelude.Nothing,
       masterUserPassword = Prelude.Nothing}
instance ToResourceProperties MasterUserOptionsProperty where
  toResourceProperties MasterUserOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.MasterUserOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MasterUserARN" Prelude.<$> masterUserARN,
                            (JSON..=) "MasterUserName" Prelude.<$> masterUserName,
                            (JSON..=) "MasterUserPassword" Prelude.<$> masterUserPassword])}
instance JSON.ToJSON MasterUserOptionsProperty where
  toJSON MasterUserOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MasterUserARN" Prelude.<$> masterUserARN,
               (JSON..=) "MasterUserName" Prelude.<$> masterUserName,
               (JSON..=) "MasterUserPassword" Prelude.<$> masterUserPassword]))
instance Property "MasterUserARN" MasterUserOptionsProperty where
  type PropertyType "MasterUserARN" MasterUserOptionsProperty = Value Prelude.Text
  set newValue MasterUserOptionsProperty {..}
    = MasterUserOptionsProperty
        {masterUserARN = Prelude.pure newValue, ..}
instance Property "MasterUserName" MasterUserOptionsProperty where
  type PropertyType "MasterUserName" MasterUserOptionsProperty = Value Prelude.Text
  set newValue MasterUserOptionsProperty {..}
    = MasterUserOptionsProperty
        {masterUserName = Prelude.pure newValue, ..}
instance Property "MasterUserPassword" MasterUserOptionsProperty where
  type PropertyType "MasterUserPassword" MasterUserOptionsProperty = Value Prelude.Text
  set newValue MasterUserOptionsProperty {..}
    = MasterUserOptionsProperty
        {masterUserPassword = Prelude.pure newValue, ..}