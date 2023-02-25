module Stratosphere.ResourceAttributes.ResourceSignal where

import Stratosphere.Prelude
import Stratosphere.Property
import Stratosphere.Value

import qualified Data.Aeson as JSON

-- | Full data type definition for ResourceSignal. See 'mkResourceSignal' for a
-- more convenient constructor.
data ResourceSignal = ResourceSignal
  { count   :: Maybe (Value Integer)
  , timeout :: Maybe (Value Text)
  }
  deriving (Show, Eq)

instance JSON.ToJSON ResourceSignal where
  toJSON ResourceSignal{..}
    = JSON.object
    $ catMaybes
    [ fmap (("Count",) . JSON.toJSON) count
    , fmap (("Timeout",) . JSON.toJSON) timeout
    ]

instance Property "Count" ResourceSignal where
  type PropertyType "Count" ResourceSignal = Value Integer
  set newValue ResourceSignal{..} = ResourceSignal{count = pure newValue, ..}

instance Property "Timeout" ResourceSignal where
  type PropertyType "Timeout" ResourceSignal = Value Text
  set newValue ResourceSignal{..} = ResourceSignal{timeout = pure newValue, ..}

-- | Constructor for 'ResourceSignal' containing required fields as arguments.
mkResourceSignal :: ResourceSignal
mkResourceSignal
  = ResourceSignal
  { count   = Nothing
  , timeout = Nothing
  }
