module Stratosphere.SageMaker.ModelCard.UserContextProperty (
        UserContextProperty(..), mkUserContextProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserContextProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-usercontext.html>
    UserContextProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-usercontext.html#cfn-sagemaker-modelcard-usercontext-domainid>
                         domainId :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-usercontext.html#cfn-sagemaker-modelcard-usercontext-userprofilearn>
                         userProfileArn :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-usercontext.html#cfn-sagemaker-modelcard-usercontext-userprofilename>
                         userProfileName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserContextProperty :: UserContextProperty
mkUserContextProperty
  = UserContextProperty
      {haddock_workaround_ = (), domainId = Prelude.Nothing,
       userProfileArn = Prelude.Nothing,
       userProfileName = Prelude.Nothing}
instance ToResourceProperties UserContextProperty where
  toResourceProperties UserContextProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.UserContext",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DomainId" Prelude.<$> domainId,
                            (JSON..=) "UserProfileArn" Prelude.<$> userProfileArn,
                            (JSON..=) "UserProfileName" Prelude.<$> userProfileName])}
instance JSON.ToJSON UserContextProperty where
  toJSON UserContextProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DomainId" Prelude.<$> domainId,
               (JSON..=) "UserProfileArn" Prelude.<$> userProfileArn,
               (JSON..=) "UserProfileName" Prelude.<$> userProfileName]))
instance Property "DomainId" UserContextProperty where
  type PropertyType "DomainId" UserContextProperty = Value Prelude.Text
  set newValue UserContextProperty {..}
    = UserContextProperty {domainId = Prelude.pure newValue, ..}
instance Property "UserProfileArn" UserContextProperty where
  type PropertyType "UserProfileArn" UserContextProperty = Value Prelude.Text
  set newValue UserContextProperty {..}
    = UserContextProperty {userProfileArn = Prelude.pure newValue, ..}
instance Property "UserProfileName" UserContextProperty where
  type PropertyType "UserProfileName" UserContextProperty = Value Prelude.Text
  set newValue UserContextProperty {..}
    = UserContextProperty {userProfileName = Prelude.pure newValue, ..}