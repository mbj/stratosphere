module Stratosphere.Lambda.EventInvokeConfig.DestinationConfigProperty (
        module Exports, DestinationConfigProperty(..),
        mkDestinationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.EventInvokeConfig.OnFailureProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.EventInvokeConfig.OnSuccessProperty as Exports
import Stratosphere.ResourceProperties
data DestinationConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-destinationconfig.html>
    DestinationConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-destinationconfig.html#cfn-lambda-eventinvokeconfig-destinationconfig-onfailure>
                               onFailure :: (Prelude.Maybe OnFailureProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-destinationconfig.html#cfn-lambda-eventinvokeconfig-destinationconfig-onsuccess>
                               onSuccess :: (Prelude.Maybe OnSuccessProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDestinationConfigProperty :: DestinationConfigProperty
mkDestinationConfigProperty
  = DestinationConfigProperty
      {haddock_workaround_ = (), onFailure = Prelude.Nothing,
       onSuccess = Prelude.Nothing}
instance ToResourceProperties DestinationConfigProperty where
  toResourceProperties DestinationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventInvokeConfig.DestinationConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OnFailure" Prelude.<$> onFailure,
                            (JSON..=) "OnSuccess" Prelude.<$> onSuccess])}
instance JSON.ToJSON DestinationConfigProperty where
  toJSON DestinationConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OnFailure" Prelude.<$> onFailure,
               (JSON..=) "OnSuccess" Prelude.<$> onSuccess]))
instance Property "OnFailure" DestinationConfigProperty where
  type PropertyType "OnFailure" DestinationConfigProperty = OnFailureProperty
  set newValue DestinationConfigProperty {..}
    = DestinationConfigProperty {onFailure = Prelude.pure newValue, ..}
instance Property "OnSuccess" DestinationConfigProperty where
  type PropertyType "OnSuccess" DestinationConfigProperty = OnSuccessProperty
  set newValue DestinationConfigProperty {..}
    = DestinationConfigProperty {onSuccess = Prelude.pure newValue, ..}