module Stratosphere.OpenSearchServerless.Index.MethodProperty (
        module Exports, MethodProperty(..), mkMethodProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpenSearchServerless.Index.ParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MethodProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-method.html>
    MethodProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-method.html#cfn-opensearchserverless-index-method-engine>
                    engine :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-method.html#cfn-opensearchserverless-index-method-name>
                    name :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-method.html#cfn-opensearchserverless-index-method-parameters>
                    parameters :: (Prelude.Maybe ParametersProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-method.html#cfn-opensearchserverless-index-method-spacetype>
                    spaceType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMethodProperty :: Value Prelude.Text -> MethodProperty
mkMethodProperty name
  = MethodProperty
      {haddock_workaround_ = (), name = name, engine = Prelude.Nothing,
       parameters = Prelude.Nothing, spaceType = Prelude.Nothing}
instance ToResourceProperties MethodProperty where
  toResourceProperties MethodProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchServerless::Index.Method",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Engine" Prelude.<$> engine,
                               (JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "SpaceType" Prelude.<$> spaceType]))}
instance JSON.ToJSON MethodProperty where
  toJSON MethodProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Engine" Prelude.<$> engine,
                  (JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "SpaceType" Prelude.<$> spaceType])))
instance Property "Engine" MethodProperty where
  type PropertyType "Engine" MethodProperty = Value Prelude.Text
  set newValue MethodProperty {..}
    = MethodProperty {engine = Prelude.pure newValue, ..}
instance Property "Name" MethodProperty where
  type PropertyType "Name" MethodProperty = Value Prelude.Text
  set newValue MethodProperty {..}
    = MethodProperty {name = newValue, ..}
instance Property "Parameters" MethodProperty where
  type PropertyType "Parameters" MethodProperty = ParametersProperty
  set newValue MethodProperty {..}
    = MethodProperty {parameters = Prelude.pure newValue, ..}
instance Property "SpaceType" MethodProperty where
  type PropertyType "SpaceType" MethodProperty = Value Prelude.Text
  set newValue MethodProperty {..}
    = MethodProperty {spaceType = Prelude.pure newValue, ..}