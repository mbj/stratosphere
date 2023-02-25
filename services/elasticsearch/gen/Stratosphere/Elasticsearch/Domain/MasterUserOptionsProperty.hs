module Stratosphere.Elasticsearch.Domain.MasterUserOptionsProperty (
        MasterUserOptionsProperty(..), mkMasterUserOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MasterUserOptionsProperty
  = MasterUserOptionsProperty {masterUserARN :: (Prelude.Maybe (Value Prelude.Text)),
                               masterUserName :: (Prelude.Maybe (Value Prelude.Text)),
                               masterUserPassword :: (Prelude.Maybe (Value Prelude.Text))}
mkMasterUserOptionsProperty :: MasterUserOptionsProperty
mkMasterUserOptionsProperty
  = MasterUserOptionsProperty
      {masterUserARN = Prelude.Nothing, masterUserName = Prelude.Nothing,
       masterUserPassword = Prelude.Nothing}
instance ToResourceProperties MasterUserOptionsProperty where
  toResourceProperties MasterUserOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Elasticsearch::Domain.MasterUserOptions",
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