module Stratosphere.OpenSearchService.Domain.JWTOptionsProperty (
        JWTOptionsProperty(..), mkJWTOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JWTOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-jwtoptions.html>
    JWTOptionsProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-jwtoptions.html#cfn-opensearchservice-domain-jwtoptions-enabled>
                        enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-jwtoptions.html#cfn-opensearchservice-domain-jwtoptions-publickey>
                        publicKey :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-jwtoptions.html#cfn-opensearchservice-domain-jwtoptions-roleskey>
                        rolesKey :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-jwtoptions.html#cfn-opensearchservice-domain-jwtoptions-subjectkey>
                        subjectKey :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJWTOptionsProperty :: JWTOptionsProperty
mkJWTOptionsProperty
  = JWTOptionsProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing,
       publicKey = Prelude.Nothing, rolesKey = Prelude.Nothing,
       subjectKey = Prelude.Nothing}
instance ToResourceProperties JWTOptionsProperty where
  toResourceProperties JWTOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.JWTOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "PublicKey" Prelude.<$> publicKey,
                            (JSON..=) "RolesKey" Prelude.<$> rolesKey,
                            (JSON..=) "SubjectKey" Prelude.<$> subjectKey])}
instance JSON.ToJSON JWTOptionsProperty where
  toJSON JWTOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "PublicKey" Prelude.<$> publicKey,
               (JSON..=) "RolesKey" Prelude.<$> rolesKey,
               (JSON..=) "SubjectKey" Prelude.<$> subjectKey]))
instance Property "Enabled" JWTOptionsProperty where
  type PropertyType "Enabled" JWTOptionsProperty = Value Prelude.Bool
  set newValue JWTOptionsProperty {..}
    = JWTOptionsProperty {enabled = Prelude.pure newValue, ..}
instance Property "PublicKey" JWTOptionsProperty where
  type PropertyType "PublicKey" JWTOptionsProperty = Value Prelude.Text
  set newValue JWTOptionsProperty {..}
    = JWTOptionsProperty {publicKey = Prelude.pure newValue, ..}
instance Property "RolesKey" JWTOptionsProperty where
  type PropertyType "RolesKey" JWTOptionsProperty = Value Prelude.Text
  set newValue JWTOptionsProperty {..}
    = JWTOptionsProperty {rolesKey = Prelude.pure newValue, ..}
instance Property "SubjectKey" JWTOptionsProperty where
  type PropertyType "SubjectKey" JWTOptionsProperty = Value Prelude.Text
  set newValue JWTOptionsProperty {..}
    = JWTOptionsProperty {subjectKey = Prelude.pure newValue, ..}