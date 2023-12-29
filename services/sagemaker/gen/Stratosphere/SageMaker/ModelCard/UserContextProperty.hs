module Stratosphere.SageMaker.ModelCard.UserContextProperty (
        UserContextProperty(..), mkUserContextProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserContextProperty
  = UserContextProperty {domainId :: (Prelude.Maybe (Value Prelude.Text)),
                         userProfileArn :: (Prelude.Maybe (Value Prelude.Text)),
                         userProfileName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserContextProperty :: UserContextProperty
mkUserContextProperty
  = UserContextProperty
      {domainId = Prelude.Nothing, userProfileArn = Prelude.Nothing,
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