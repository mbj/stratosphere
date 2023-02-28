module Stratosphere.RefactorSpaces.Route.UriPathRouteInputProperty (
        UriPathRouteInputProperty(..), mkUriPathRouteInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UriPathRouteInputProperty
  = UriPathRouteInputProperty {activationState :: (Value Prelude.Text),
                               includeChildPaths :: (Prelude.Maybe (Value Prelude.Bool)),
                               methods :: (Prelude.Maybe (ValueList Prelude.Text)),
                               sourcePath :: (Prelude.Maybe (Value Prelude.Text))}
mkUriPathRouteInputProperty ::
  Value Prelude.Text -> UriPathRouteInputProperty
mkUriPathRouteInputProperty activationState
  = UriPathRouteInputProperty
      {activationState = activationState,
       includeChildPaths = Prelude.Nothing, methods = Prelude.Nothing,
       sourcePath = Prelude.Nothing}
instance ToResourceProperties UriPathRouteInputProperty where
  toResourceProperties UriPathRouteInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::RefactorSpaces::Route.UriPathRouteInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ActivationState" JSON..= activationState]
                           (Prelude.catMaybes
                              [(JSON..=) "IncludeChildPaths" Prelude.<$> includeChildPaths,
                               (JSON..=) "Methods" Prelude.<$> methods,
                               (JSON..=) "SourcePath" Prelude.<$> sourcePath]))}
instance JSON.ToJSON UriPathRouteInputProperty where
  toJSON UriPathRouteInputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ActivationState" JSON..= activationState]
              (Prelude.catMaybes
                 [(JSON..=) "IncludeChildPaths" Prelude.<$> includeChildPaths,
                  (JSON..=) "Methods" Prelude.<$> methods,
                  (JSON..=) "SourcePath" Prelude.<$> sourcePath])))
instance Property "ActivationState" UriPathRouteInputProperty where
  type PropertyType "ActivationState" UriPathRouteInputProperty = Value Prelude.Text
  set newValue UriPathRouteInputProperty {..}
    = UriPathRouteInputProperty {activationState = newValue, ..}
instance Property "IncludeChildPaths" UriPathRouteInputProperty where
  type PropertyType "IncludeChildPaths" UriPathRouteInputProperty = Value Prelude.Bool
  set newValue UriPathRouteInputProperty {..}
    = UriPathRouteInputProperty
        {includeChildPaths = Prelude.pure newValue, ..}
instance Property "Methods" UriPathRouteInputProperty where
  type PropertyType "Methods" UriPathRouteInputProperty = ValueList Prelude.Text
  set newValue UriPathRouteInputProperty {..}
    = UriPathRouteInputProperty {methods = Prelude.pure newValue, ..}
instance Property "SourcePath" UriPathRouteInputProperty where
  type PropertyType "SourcePath" UriPathRouteInputProperty = Value Prelude.Text
  set newValue UriPathRouteInputProperty {..}
    = UriPathRouteInputProperty
        {sourcePath = Prelude.pure newValue, ..}