module Stratosphere.MSK.Cluster.SaslProperty (
        module Exports, SaslProperty(..), mkSaslProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Cluster.IamProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.Cluster.ScramProperty as Exports
import Stratosphere.ResourceProperties
data SaslProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-sasl.html>
    SaslProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-sasl.html#cfn-msk-cluster-sasl-iam>
                  iam :: (Prelude.Maybe IamProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-sasl.html#cfn-msk-cluster-sasl-scram>
                  scram :: (Prelude.Maybe ScramProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSaslProperty :: SaslProperty
mkSaslProperty
  = SaslProperty
      {haddock_workaround_ = (), iam = Prelude.Nothing,
       scram = Prelude.Nothing}
instance ToResourceProperties SaslProperty where
  toResourceProperties SaslProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.Sasl", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Iam" Prelude.<$> iam,
                            (JSON..=) "Scram" Prelude.<$> scram])}
instance JSON.ToJSON SaslProperty where
  toJSON SaslProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Iam" Prelude.<$> iam,
               (JSON..=) "Scram" Prelude.<$> scram]))
instance Property "Iam" SaslProperty where
  type PropertyType "Iam" SaslProperty = IamProperty
  set newValue SaslProperty {..}
    = SaslProperty {iam = Prelude.pure newValue, ..}
instance Property "Scram" SaslProperty where
  type PropertyType "Scram" SaslProperty = ScramProperty
  set newValue SaslProperty {..}
    = SaslProperty {scram = Prelude.pure newValue, ..}