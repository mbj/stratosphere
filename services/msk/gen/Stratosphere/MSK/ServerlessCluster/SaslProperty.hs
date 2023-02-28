module Stratosphere.MSK.ServerlessCluster.SaslProperty (
        module Exports, SaslProperty(..), mkSaslProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.ServerlessCluster.IamProperty as Exports
import Stratosphere.ResourceProperties
data SaslProperty = SaslProperty {iam :: IamProperty}
mkSaslProperty :: IamProperty -> SaslProperty
mkSaslProperty iam = SaslProperty {iam = iam}
instance ToResourceProperties SaslProperty where
  toResourceProperties SaslProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::ServerlessCluster.Sasl",
         supportsTags = Prelude.False, properties = ["Iam" JSON..= iam]}
instance JSON.ToJSON SaslProperty where
  toJSON SaslProperty {..} = JSON.object ["Iam" JSON..= iam]
instance Property "Iam" SaslProperty where
  type PropertyType "Iam" SaslProperty = IamProperty
  set newValue SaslProperty {} = SaslProperty {iam = newValue, ..}