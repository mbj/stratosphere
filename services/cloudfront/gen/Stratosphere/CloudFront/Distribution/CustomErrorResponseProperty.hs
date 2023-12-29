module Stratosphere.CloudFront.Distribution.CustomErrorResponseProperty (
        CustomErrorResponseProperty(..), mkCustomErrorResponseProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomErrorResponseProperty
  = CustomErrorResponseProperty {errorCachingMinTTL :: (Prelude.Maybe (Value Prelude.Double)),
                                 errorCode :: (Value Prelude.Integer),
                                 responseCode :: (Prelude.Maybe (Value Prelude.Integer)),
                                 responsePagePath :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomErrorResponseProperty ::
  Value Prelude.Integer -> CustomErrorResponseProperty
mkCustomErrorResponseProperty errorCode
  = CustomErrorResponseProperty
      {errorCode = errorCode, errorCachingMinTTL = Prelude.Nothing,
       responseCode = Prelude.Nothing, responsePagePath = Prelude.Nothing}
instance ToResourceProperties CustomErrorResponseProperty where
  toResourceProperties CustomErrorResponseProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.CustomErrorResponse",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ErrorCode" JSON..= errorCode]
                           (Prelude.catMaybes
                              [(JSON..=) "ErrorCachingMinTTL" Prelude.<$> errorCachingMinTTL,
                               (JSON..=) "ResponseCode" Prelude.<$> responseCode,
                               (JSON..=) "ResponsePagePath" Prelude.<$> responsePagePath]))}
instance JSON.ToJSON CustomErrorResponseProperty where
  toJSON CustomErrorResponseProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ErrorCode" JSON..= errorCode]
              (Prelude.catMaybes
                 [(JSON..=) "ErrorCachingMinTTL" Prelude.<$> errorCachingMinTTL,
                  (JSON..=) "ResponseCode" Prelude.<$> responseCode,
                  (JSON..=) "ResponsePagePath" Prelude.<$> responsePagePath])))
instance Property "ErrorCachingMinTTL" CustomErrorResponseProperty where
  type PropertyType "ErrorCachingMinTTL" CustomErrorResponseProperty = Value Prelude.Double
  set newValue CustomErrorResponseProperty {..}
    = CustomErrorResponseProperty
        {errorCachingMinTTL = Prelude.pure newValue, ..}
instance Property "ErrorCode" CustomErrorResponseProperty where
  type PropertyType "ErrorCode" CustomErrorResponseProperty = Value Prelude.Integer
  set newValue CustomErrorResponseProperty {..}
    = CustomErrorResponseProperty {errorCode = newValue, ..}
instance Property "ResponseCode" CustomErrorResponseProperty where
  type PropertyType "ResponseCode" CustomErrorResponseProperty = Value Prelude.Integer
  set newValue CustomErrorResponseProperty {..}
    = CustomErrorResponseProperty
        {responseCode = Prelude.pure newValue, ..}
instance Property "ResponsePagePath" CustomErrorResponseProperty where
  type PropertyType "ResponsePagePath" CustomErrorResponseProperty = Value Prelude.Text
  set newValue CustomErrorResponseProperty {..}
    = CustomErrorResponseProperty
        {responsePagePath = Prelude.pure newValue, ..}