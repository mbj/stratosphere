module Stratosphere.Glue.Connection.OAuth2ClientApplicationProperty (
        OAuth2ClientApplicationProperty(..),
        mkOAuth2ClientApplicationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OAuth2ClientApplicationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-oauth2clientapplication.html>
    OAuth2ClientApplicationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-oauth2clientapplication.html#cfn-glue-connection-oauth2clientapplication-awsmanagedclientapplicationreference>
                                     aWSManagedClientApplicationReference :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-oauth2clientapplication.html#cfn-glue-connection-oauth2clientapplication-usermanagedclientapplicationclientid>
                                     userManagedClientApplicationClientId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOAuth2ClientApplicationProperty ::
  OAuth2ClientApplicationProperty
mkOAuth2ClientApplicationProperty
  = OAuth2ClientApplicationProperty
      {haddock_workaround_ = (),
       aWSManagedClientApplicationReference = Prelude.Nothing,
       userManagedClientApplicationClientId = Prelude.Nothing}
instance ToResourceProperties OAuth2ClientApplicationProperty where
  toResourceProperties OAuth2ClientApplicationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Connection.OAuth2ClientApplication",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AWSManagedClientApplicationReference"
                              Prelude.<$> aWSManagedClientApplicationReference,
                            (JSON..=) "UserManagedClientApplicationClientId"
                              Prelude.<$> userManagedClientApplicationClientId])}
instance JSON.ToJSON OAuth2ClientApplicationProperty where
  toJSON OAuth2ClientApplicationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AWSManagedClientApplicationReference"
                 Prelude.<$> aWSManagedClientApplicationReference,
               (JSON..=) "UserManagedClientApplicationClientId"
                 Prelude.<$> userManagedClientApplicationClientId]))
instance Property "AWSManagedClientApplicationReference" OAuth2ClientApplicationProperty where
  type PropertyType "AWSManagedClientApplicationReference" OAuth2ClientApplicationProperty = Value Prelude.Text
  set newValue OAuth2ClientApplicationProperty {..}
    = OAuth2ClientApplicationProperty
        {aWSManagedClientApplicationReference = Prelude.pure newValue, ..}
instance Property "UserManagedClientApplicationClientId" OAuth2ClientApplicationProperty where
  type PropertyType "UserManagedClientApplicationClientId" OAuth2ClientApplicationProperty = Value Prelude.Text
  set newValue OAuth2ClientApplicationProperty {..}
    = OAuth2ClientApplicationProperty
        {userManagedClientApplicationClientId = Prelude.pure newValue, ..}