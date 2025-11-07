module Stratosphere.Cognito.UserPoolClient.RefreshTokenRotationProperty (
        RefreshTokenRotationProperty(..), mkRefreshTokenRotationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RefreshTokenRotationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-refreshtokenrotation.html>
    RefreshTokenRotationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-refreshtokenrotation.html#cfn-cognito-userpoolclient-refreshtokenrotation-feature>
                                  feature :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolclient-refreshtokenrotation.html#cfn-cognito-userpoolclient-refreshtokenrotation-retrygraceperiodseconds>
                                  retryGracePeriodSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRefreshTokenRotationProperty :: RefreshTokenRotationProperty
mkRefreshTokenRotationProperty
  = RefreshTokenRotationProperty
      {haddock_workaround_ = (), feature = Prelude.Nothing,
       retryGracePeriodSeconds = Prelude.Nothing}
instance ToResourceProperties RefreshTokenRotationProperty where
  toResourceProperties RefreshTokenRotationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolClient.RefreshTokenRotation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Feature" Prelude.<$> feature,
                            (JSON..=) "RetryGracePeriodSeconds"
                              Prelude.<$> retryGracePeriodSeconds])}
instance JSON.ToJSON RefreshTokenRotationProperty where
  toJSON RefreshTokenRotationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Feature" Prelude.<$> feature,
               (JSON..=) "RetryGracePeriodSeconds"
                 Prelude.<$> retryGracePeriodSeconds]))
instance Property "Feature" RefreshTokenRotationProperty where
  type PropertyType "Feature" RefreshTokenRotationProperty = Value Prelude.Text
  set newValue RefreshTokenRotationProperty {..}
    = RefreshTokenRotationProperty
        {feature = Prelude.pure newValue, ..}
instance Property "RetryGracePeriodSeconds" RefreshTokenRotationProperty where
  type PropertyType "RetryGracePeriodSeconds" RefreshTokenRotationProperty = Value Prelude.Integer
  set newValue RefreshTokenRotationProperty {..}
    = RefreshTokenRotationProperty
        {retryGracePeriodSeconds = Prelude.pure newValue, ..}