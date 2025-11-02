module Stratosphere.MSK.ServerlessCluster.SaslProperty (
        module Exports, SaslProperty(..), mkSaslProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.ServerlessCluster.IamProperty as Exports
import Stratosphere.ResourceProperties
data SaslProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-serverlesscluster-sasl.html>
    SaslProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-serverlesscluster-sasl.html#cfn-msk-serverlesscluster-sasl-iam>
                  iam :: IamProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSaslProperty :: IamProperty -> SaslProperty
mkSaslProperty iam
  = SaslProperty {haddock_workaround_ = (), iam = iam}
instance ToResourceProperties SaslProperty where
  toResourceProperties SaslProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::ServerlessCluster.Sasl",
         supportsTags = Prelude.False, properties = ["Iam" JSON..= iam]}
instance JSON.ToJSON SaslProperty where
  toJSON SaslProperty {..} = JSON.object ["Iam" JSON..= iam]
instance Property "Iam" SaslProperty where
  type PropertyType "Iam" SaslProperty = IamProperty
  set newValue SaslProperty {..} = SaslProperty {iam = newValue, ..}