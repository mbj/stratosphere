module Stratosphere.Lex.Bot.CodeHookSpecificationProperty (
        module Exports, CodeHookSpecificationProperty(..),
        mkCodeHookSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.LambdaCodeHookProperty as Exports
import Stratosphere.ResourceProperties
data CodeHookSpecificationProperty
  = CodeHookSpecificationProperty {lambdaCodeHook :: LambdaCodeHookProperty}
mkCodeHookSpecificationProperty ::
  LambdaCodeHookProperty -> CodeHookSpecificationProperty
mkCodeHookSpecificationProperty lambdaCodeHook
  = CodeHookSpecificationProperty {lambdaCodeHook = lambdaCodeHook}
instance ToResourceProperties CodeHookSpecificationProperty where
  toResourceProperties CodeHookSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.CodeHookSpecification",
         properties = ["LambdaCodeHook" JSON..= lambdaCodeHook]}
instance JSON.ToJSON CodeHookSpecificationProperty where
  toJSON CodeHookSpecificationProperty {..}
    = JSON.object ["LambdaCodeHook" JSON..= lambdaCodeHook]
instance Property "LambdaCodeHook" CodeHookSpecificationProperty where
  type PropertyType "LambdaCodeHook" CodeHookSpecificationProperty = LambdaCodeHookProperty
  set newValue CodeHookSpecificationProperty {}
    = CodeHookSpecificationProperty {lambdaCodeHook = newValue, ..}