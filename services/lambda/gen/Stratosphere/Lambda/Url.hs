module Stratosphere.Lambda.Url (
        module Exports, Url(..), mkUrl
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.Url.CorsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Url
  = Url {authType :: (Value Prelude.Text),
         cors :: (Prelude.Maybe CorsProperty),
         invokeMode :: (Prelude.Maybe (Value Prelude.Text)),
         qualifier :: (Prelude.Maybe (Value Prelude.Text)),
         targetFunctionArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUrl :: Value Prelude.Text -> Value Prelude.Text -> Url
mkUrl authType targetFunctionArn
  = Url
      {authType = authType, targetFunctionArn = targetFunctionArn,
       cors = Prelude.Nothing, invokeMode = Prelude.Nothing,
       qualifier = Prelude.Nothing}
instance ToResourceProperties Url where
  toResourceProperties Url {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Url", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthType" JSON..= authType,
                            "TargetFunctionArn" JSON..= targetFunctionArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Cors" Prelude.<$> cors,
                               (JSON..=) "InvokeMode" Prelude.<$> invokeMode,
                               (JSON..=) "Qualifier" Prelude.<$> qualifier]))}
instance JSON.ToJSON Url where
  toJSON Url {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthType" JSON..= authType,
               "TargetFunctionArn" JSON..= targetFunctionArn]
              (Prelude.catMaybes
                 [(JSON..=) "Cors" Prelude.<$> cors,
                  (JSON..=) "InvokeMode" Prelude.<$> invokeMode,
                  (JSON..=) "Qualifier" Prelude.<$> qualifier])))
instance Property "AuthType" Url where
  type PropertyType "AuthType" Url = Value Prelude.Text
  set newValue Url {..} = Url {authType = newValue, ..}
instance Property "Cors" Url where
  type PropertyType "Cors" Url = CorsProperty
  set newValue Url {..} = Url {cors = Prelude.pure newValue, ..}
instance Property "InvokeMode" Url where
  type PropertyType "InvokeMode" Url = Value Prelude.Text
  set newValue Url {..}
    = Url {invokeMode = Prelude.pure newValue, ..}
instance Property "Qualifier" Url where
  type PropertyType "Qualifier" Url = Value Prelude.Text
  set newValue Url {..} = Url {qualifier = Prelude.pure newValue, ..}
instance Property "TargetFunctionArn" Url where
  type PropertyType "TargetFunctionArn" Url = Value Prelude.Text
  set newValue Url {..} = Url {targetFunctionArn = newValue, ..}