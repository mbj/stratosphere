module Stratosphere.RefactorSpaces.Route.UriPathRouteInputProperty (
        UriPathRouteInputProperty(..), mkUriPathRouteInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UriPathRouteInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-refactorspaces-route-uripathrouteinput.html>
    UriPathRouteInputProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-refactorspaces-route-uripathrouteinput.html#cfn-refactorspaces-route-uripathrouteinput-activationstate>
                               activationState :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-refactorspaces-route-uripathrouteinput.html#cfn-refactorspaces-route-uripathrouteinput-appendsourcepath>
                               appendSourcePath :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-refactorspaces-route-uripathrouteinput.html#cfn-refactorspaces-route-uripathrouteinput-includechildpaths>
                               includeChildPaths :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-refactorspaces-route-uripathrouteinput.html#cfn-refactorspaces-route-uripathrouteinput-methods>
                               methods :: (Prelude.Maybe (ValueList Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-refactorspaces-route-uripathrouteinput.html#cfn-refactorspaces-route-uripathrouteinput-sourcepath>
                               sourcePath :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUriPathRouteInputProperty ::
  Value Prelude.Text -> UriPathRouteInputProperty
mkUriPathRouteInputProperty activationState
  = UriPathRouteInputProperty
      {haddock_workaround_ = (), activationState = activationState,
       appendSourcePath = Prelude.Nothing,
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
                              [(JSON..=) "AppendSourcePath" Prelude.<$> appendSourcePath,
                               (JSON..=) "IncludeChildPaths" Prelude.<$> includeChildPaths,
                               (JSON..=) "Methods" Prelude.<$> methods,
                               (JSON..=) "SourcePath" Prelude.<$> sourcePath]))}
instance JSON.ToJSON UriPathRouteInputProperty where
  toJSON UriPathRouteInputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ActivationState" JSON..= activationState]
              (Prelude.catMaybes
                 [(JSON..=) "AppendSourcePath" Prelude.<$> appendSourcePath,
                  (JSON..=) "IncludeChildPaths" Prelude.<$> includeChildPaths,
                  (JSON..=) "Methods" Prelude.<$> methods,
                  (JSON..=) "SourcePath" Prelude.<$> sourcePath])))
instance Property "ActivationState" UriPathRouteInputProperty where
  type PropertyType "ActivationState" UriPathRouteInputProperty = Value Prelude.Text
  set newValue UriPathRouteInputProperty {..}
    = UriPathRouteInputProperty {activationState = newValue, ..}
instance Property "AppendSourcePath" UriPathRouteInputProperty where
  type PropertyType "AppendSourcePath" UriPathRouteInputProperty = Value Prelude.Bool
  set newValue UriPathRouteInputProperty {..}
    = UriPathRouteInputProperty
        {appendSourcePath = Prelude.pure newValue, ..}
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