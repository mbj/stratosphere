module Stratosphere.ECS.Service.ServiceConnectTlsCertificateAuthorityProperty (
        ServiceConnectTlsCertificateAuthorityProperty(..),
        mkServiceConnectTlsCertificateAuthorityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceConnectTlsCertificateAuthorityProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnecttlscertificateauthority.html>
    ServiceConnectTlsCertificateAuthorityProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceconnecttlscertificateauthority.html#cfn-ecs-service-serviceconnecttlscertificateauthority-awspcaauthorityarn>
                                                   awsPcaAuthorityArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceConnectTlsCertificateAuthorityProperty ::
  ServiceConnectTlsCertificateAuthorityProperty
mkServiceConnectTlsCertificateAuthorityProperty
  = ServiceConnectTlsCertificateAuthorityProperty
      {haddock_workaround_ = (), awsPcaAuthorityArn = Prelude.Nothing}
instance ToResourceProperties ServiceConnectTlsCertificateAuthorityProperty where
  toResourceProperties
    ServiceConnectTlsCertificateAuthorityProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.ServiceConnectTlsCertificateAuthority",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AwsPcaAuthorityArn" Prelude.<$> awsPcaAuthorityArn])}
instance JSON.ToJSON ServiceConnectTlsCertificateAuthorityProperty where
  toJSON ServiceConnectTlsCertificateAuthorityProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AwsPcaAuthorityArn" Prelude.<$> awsPcaAuthorityArn]))
instance Property "AwsPcaAuthorityArn" ServiceConnectTlsCertificateAuthorityProperty where
  type PropertyType "AwsPcaAuthorityArn" ServiceConnectTlsCertificateAuthorityProperty = Value Prelude.Text
  set newValue ServiceConnectTlsCertificateAuthorityProperty {..}
    = ServiceConnectTlsCertificateAuthorityProperty
        {awsPcaAuthorityArn = Prelude.pure newValue, ..}