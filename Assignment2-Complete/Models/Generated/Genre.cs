using System;
using System.Collections.Generic;

namespace Assignment3LINQ.Models.Generated;

public partial class Genre
{
    public int GenreId { get; set; }

    public string? Name { get; set; }

    public virtual ICollection<Track> Tracks { get; } = new List<Track>();
}
